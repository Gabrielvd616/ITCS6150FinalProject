use bevy::{
    math::vec3,
    prelude::*,
    utils::HashMap,
};
use bevy_rapier2d::prelude::*;
use std::collections::{BinaryHeap, HashSet};
use std::cmp::Ordering;

use crate::car::Car;
use crate::configs::*;
use crate::resources::*;

pub struct PathfindingPlugin;

#[derive(Component)]
pub struct AStarCar {
    pub path: Vec<Vec2>,
    pub current_target: usize,
    pub recalculate_timer: Timer,
}

#[derive(Component)]
pub struct AStarAgent; // Marker component to distinguish A* cars from neural network cars

#[derive(Component)]
pub struct PathfindingBrain {
    pub grid: Grid,
    pub last_position: Vec2,
}

impl Plugin for PathfindingPlugin {
    fn build(&self, app: &mut App) {
        app.add_system(astar_pathfinding_system)
            .add_system(astar_movement_system);
    }
}

// Grid-based representation for pathfinding
#[derive(Clone)]
pub struct Grid {
    pub width: i32,
    pub height: i32,
    pub cell_size: f32,
    pub obstacles: HashSet<(i32, i32)>,
    pub origin: Vec2,
}

#[derive(Clone, Eq, PartialEq)]
struct Node {
    position: (i32, i32),
    g_cost: i32, // Distance from start
    h_cost: i32, // Heuristic distance to goal
    parent: Option<(i32, i32)>,
}

impl Node {
    fn f_cost(&self) -> i32 {
        self.g_cost + self.h_cost
    }
}

impl Ord for Node {
    fn cmp(&self, other: &Self) -> Ordering {
        // Reverse ordering for min-heap behavior
        other.f_cost().cmp(&self.f_cost())
            .then_with(|| other.h_cost.cmp(&self.h_cost))
    }
}

impl PartialOrd for Node {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Grid {
    pub fn new(width: i32, height: i32, cell_size: f32, origin: Vec2) -> Self {
        Self {
            width,
            height,
            cell_size,
            obstacles: HashSet::new(),
            origin,
        }
    }

    pub fn world_to_grid(&self, world_pos: Vec2) -> (i32, i32) {
        let relative_pos = world_pos - self.origin;
        (
            (relative_pos.x / self.cell_size) as i32,
            (relative_pos.y / self.cell_size) as i32,
        )
    }

    pub fn grid_to_world(&self, grid_pos: (i32, i32)) -> Vec2 {
        Vec2::new(
            grid_pos.0 as f32 * self.cell_size + self.origin.x,
            grid_pos.1 as f32 * self.cell_size + self.origin.y,
        )
    }

    pub fn is_valid(&self, pos: (i32, i32)) -> bool {
        pos.0 >= 0 && pos.0 < self.width && pos.1 >= 0 && pos.1 < self.height
    }

    pub fn is_walkable(&self, pos: (i32, i32)) -> bool {
        self.is_valid(pos) && !self.obstacles.contains(&pos)
    }

    pub fn update_obstacles(&mut self, rapier_context: &RapierContext, car_pos: Vec2, scan_radius: f32) {
        self.obstacles.clear();
        
        // Scan area around car for obstacles
        let car_grid = self.world_to_grid(car_pos);
        let scan_cells = (scan_radius / self.cell_size) as i32;
        
        for x in (car_grid.0 - scan_cells)..(car_grid.0 + scan_cells) {
            for y in (car_grid.1 - scan_cells)..(car_grid.1 + scan_cells) {
                if !self.is_valid((x, y)) {
                    continue;
                }
                
                let world_pos = self.grid_to_world((x, y));
                
                // Raycast to check for obstacles at this grid position
                let ray_filter = CollisionGroups {
                    memberships: Group::GROUP_1,
                    filters: Group::GROUP_2,
                };
                let filter = QueryFilter::default().groups(ray_filter);
                
                // Check multiple directions from this point to ensure obstacle detection
                let directions = [
                    Vec2::new(0.0, 1.0),
                    Vec2::new(1.0, 0.0),
                    Vec2::new(0.0, -1.0),
                    Vec2::new(-1.0, 0.0),
                ];
                
                for dir in directions.iter() {
                    if rapier_context.cast_ray(
                        world_pos,
                        *dir,
                        self.cell_size * 0.5,
                        false,
                        filter
                    ).is_some() {
                        self.obstacles.insert((x, y));
                        break;
                    }
                }
            }
        }
    }
}

impl AStarCar {
    pub fn new() -> Self {
        Self {
            path: Vec::new(),
            current_target: 0,
            recalculate_timer: Timer::from_seconds(1.0, TimerMode::Repeating),
        }
    }
}

impl PathfindingBrain {
    pub fn new() -> Self {
        let grid = Grid::new(
            100,  // Grid width
            200,  // Grid height (longer for the road)
            20.0, // Cell size in world units
            Vec2::new(600.0, 0.0), // Origin point
        );
        
        Self {
            grid,
            last_position: Vec2::ZERO,
        }
    }
}

// A* pathfinding algorithm implementation
pub fn find_path(grid: &Grid, start: Vec2, goal: Vec2) -> Vec<Vec2> {
    let start_grid = grid.world_to_grid(start);
    let goal_grid = grid.world_to_grid(goal);
    
    if !grid.is_walkable(start_grid) || !grid.is_walkable(goal_grid) {
        // If start or goal is blocked, create a simple forward path
        return vec![
            start + Vec2::new(0.0, 50.0),
            start + Vec2::new(0.0, 100.0),
            start + Vec2::new(0.0, 150.0),
            goal
        ];
    }
    
    let mut open_set = BinaryHeap::new();
    let mut closed_set = HashSet::new();
    let mut came_from: HashMap<(i32, i32), (i32, i32)> = HashMap::new();
    let mut g_score: HashMap<(i32, i32), i32> = HashMap::new();
    
    let start_node = Node {
        position: start_grid,
        g_cost: 0,
        h_cost: manhattan_distance(start_grid, goal_grid),
        parent: None,
    };
    
    open_set.push(start_node);
    g_score.insert(start_grid, 0);
    
    while let Some(current) = open_set.pop() {
        if current.position == goal_grid {
            return reconstruct_path(came_from, current.position, grid);
        }
        
        closed_set.insert(current.position);
        
        // Check 4 cardinal directions first (simpler pathfinding)
        let neighbors = [
            (0, -1), // North
            (1,  0), // East  
            (0,  1), // South
            (-1, 0), // West
        ];
        
        for &(dx, dy) in &neighbors {
            let neighbor_pos = (current.position.0 + dx, current.position.1 + dy);
            
            if !grid.is_walkable(neighbor_pos) || closed_set.contains(&neighbor_pos) {
                continue;
            }
            
            let movement_cost = 10; // Uniform cost for cardinal directions
            let tentative_g = current.g_cost + movement_cost;
            
            if let Some(&existing_g) = g_score.get(&neighbor_pos) {
                if tentative_g >= existing_g {
                    continue;
                }
            }
            
            came_from.insert(neighbor_pos, current.position);
            g_score.insert(neighbor_pos, tentative_g);
            
            let neighbor_node = Node {
                position: neighbor_pos,
                g_cost: tentative_g,
                h_cost: manhattan_distance(neighbor_pos, goal_grid),
                parent: Some(current.position),
            };
            
            open_set.push(neighbor_node);
        }
    }
    
    // If no path found, create a simple forward path
    vec![
        start + Vec2::new(0.0, 50.0),
        start + Vec2::new(0.0, 100.0),
        start + Vec2::new(0.0, 150.0),
        goal
    ]
}

fn manhattan_distance(a: (i32, i32), b: (i32, i32)) -> i32 {
    (a.0 - b.0).abs() + (a.1 - b.1).abs()
}

fn reconstruct_path(came_from: HashMap<(i32, i32), (i32, i32)>, mut current: (i32, i32), grid: &Grid) -> Vec<Vec2> {
    let mut path = Vec::new();
    
    path.push(grid.grid_to_world(current));
    
    while let Some(&parent) = came_from.get(&current) {
        current = parent;
        path.push(grid.grid_to_world(current));
    }
    
    path.reverse();
    path
}

fn astar_pathfinding_system(
    time: Res<Time>,
    rapier_context: Res<RapierContext>,
    mut query: Query<(&Transform, &mut AStarCar, &mut PathfindingBrain), (With<AStarAgent>, With<Car>)>,
) {
    for (transform, mut astar_car, mut brain) in query.iter_mut() {
        astar_car.recalculate_timer.tick(time.delta());
        
        let current_pos = Vec2::new(transform.translation.x, transform.translation.y);
        
        // Recalculate path periodically or when car has moved significantly
        if astar_car.recalculate_timer.finished() || 
           brain.last_position.distance(current_pos) > 50.0 {
            
            // Update obstacle map
            brain.grid.update_obstacles(&rapier_context, current_pos, 300.0);
            
            // Set goal ahead on the road
            let goal = Vec2::new(current_pos.x, current_pos.y + 500.0);
            
            // Find new path
            astar_car.path = find_path(&brain.grid, current_pos, goal);
            astar_car.current_target = 0;
            brain.last_position = current_pos;
        }
    }
}

fn astar_movement_system(
    time: Res<Time>,
    mut query: Query<(&mut Transform, &mut AStarCar), (With<AStarAgent>, With<Car>)>,
) {
    for (mut transform, mut astar_car) in query.iter_mut() {
        if astar_car.path.is_empty() {
            // Default forward movement if no path
            let movement_direction = transform.rotation * Vec3::Y;
            transform.translation += movement_direction * 100.0 * time.delta_seconds();
            continue;
        }
        
        // Follow the path
        if astar_car.current_target < astar_car.path.len() {
            let target = astar_car.path[astar_car.current_target];
            let current_pos = Vec2::new(transform.translation.x, transform.translation.y);
            let distance_to_target = current_pos.distance(target);
            
            // Check if reached current target (increased threshold for easier reaching)
            if distance_to_target < 50.0 {
                astar_car.current_target += 1;
                
                // If reached end of path, generate new path ahead
                if astar_car.current_target >= astar_car.path.len() {
                    astar_car.path.clear();
                }
                continue;
            }
            
            let direction = (target - current_pos).normalize();
            
            // Check if direction is valid
            if direction.is_nan() {
                let movement_direction = transform.rotation * Vec3::Y;
                transform.translation += movement_direction * 100.0 * time.delta_seconds();
                continue;
            }
            
            // Simple direct movement towards target (no rotation for now)
            let movement = direction * 100.0 * time.delta_seconds();
            transform.translation += Vec3::new(movement.x, movement.y, 0.0);
            
            // Optional: rotate to face movement direction
            let target_angle = direction.y.atan2(direction.x) - std::f32::consts::PI / 2.0;
            let current_angle = transform.rotation.z;
            let angle_diff = target_angle - current_angle;
            
            // Normalize angle difference to [-π, π]
            let normalized_diff = ((angle_diff + std::f32::consts::PI) % (2.0 * std::f32::consts::PI)) - std::f32::consts::PI;
            transform.rotate_z(normalized_diff * 2.0 * time.delta_seconds());
            
        } else {
            // Reached end of path, clear it to trigger recalculation
            astar_car.path.clear();
            astar_car.current_target = 0;
        }
    }
}

// Bundle for A* cars
#[derive(Bundle)]
pub struct AStarCarBundle {
    sprite_bundle: SpriteBundle,
    car: Car,
    astar_agent: AStarAgent, // Marker component
    astar: AStarCar,
    pathfinding_brain: PathfindingBrain,
    velocity: Velocity,
    mass: ColliderMassProperties,
    rigid_body: RigidBody,
    collider: Collider,
    events: ActiveEvents,
    damping: Damping,
    sleep: Sleeping,
    ccd: Ccd,
    collision_groups: CollisionGroups,
}

impl AStarCarBundle {
    pub fn new(asset_server: &AssetServer, spawn_x: f32, spawn_y: f32) -> Self {
        Self {
            sprite_bundle: SpriteBundle {
                transform: Transform::from_xyz(spawn_x, spawn_y, 0.0)
                    .with_scale(vec3(2.5, 2.5, 1.0)),
                texture: asset_server.load("agent.png"),
                sprite: Sprite {
                    color: Color::rgb(0.5, 0.8, 1.0), // Blue tint for A* cars
                    ..default()
                },
                ..default()
            },
            car: Car,
            astar_agent: AStarAgent, // Add the marker component
            astar: AStarCar::new(),
            pathfinding_brain: PathfindingBrain::new(),
            velocity: Velocity::zero(),
            mass: ColliderMassProperties::Mass(3000.0),
            rigid_body: RigidBody::Dynamic,
            collider: Collider::cuboid(5.0, 8.0),
            events: ActiveEvents::COLLISION_EVENTS,
            damping: Damping {
                angular_damping: 100.0,
                linear_damping: 100.0,
            },
            sleep: Sleeping::disabled(),
            ccd: Ccd::enabled(),
            collision_groups: CollisionGroups {
                memberships: Group::GROUP_1,
                filters: Group::GROUP_2,
            },
        }
    }
}

// Separate plugin for A* population management
pub struct AStarPopulationPlugin;

impl Plugin for AStarPopulationPlugin {
    fn build(&self, app: &mut bevy::prelude::App) {
        app.insert_resource(MaxDistanceTravelled(0.0))  // Add this missing resource
            .insert_resource(BrainToDisplay::default())  // Add this too for GUI compatibility
            .add_startup_system(setup_astar_cars)
            .add_system(astar_stats_system);
    }
}

fn setup_astar_cars(mut commands: Commands, asset_server: Res<AssetServer>) {
    // Spawn only A* cars
    for i in 0..NUM_AI_CARS {
        let spawn_x = 850.0 + (i as f32 % 10.0) * 15.0; // Arrange in rows
        let spawn_y = WINDOW_HEIGHT / 2.0 + (i as f32 / 10.0).floor() * 30.0;
        commands.spawn(AStarCarBundle::new(&asset_server, spawn_x, spawn_y));
    }
}

fn astar_stats_system(
    mut sim_stats: ResMut<SimStats>,
    mut max_distance_travelled: ResMut<MaxDistanceTravelled>,
    query: Query<&Transform, With<AStarAgent>>,
) {
    let mut max_distance = 0.0;
    sim_stats.num_cars_alive = query.iter().len();

    for transform in query.iter() {
        let distance = transform.translation.y / 340.0; // Same fitness calculation as NN cars
        if distance > max_distance {
            max_distance = distance;
            sim_stats.max_current_score = distance;
            max_distance_travelled.0 = transform.translation.y;
        }
    }
}