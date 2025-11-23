use bevy::{
    diagnostic::{FrameTimeDiagnosticsPlugin, LogDiagnosticsPlugin},
    math::vec3,
    prelude::*,
    window::{PresentMode, WindowMode},
};
use bevy_inspector_egui::{bevy_egui::EguiPlugin, DefaultInspectorConfigPlugin};
use bevy_pancam::{PanCam, PanCamPlugin};
use bevy_rapier2d::{
    prelude::{Collider, NoUserData, RapierConfiguration, RapierPhysicsPlugin, RigidBody},
    render::RapierDebugRenderPlugin,
};
use std::io::{self, Write};

use steering::{
    car::{Car, CarPlugin},
    gui::GuiPlugin,
    population::PopulationPlugin,
    pathfinding::{PathfindingPlugin, AStarPopulationPlugin},
};
use steering::{
    enemy::{spawn_bound_trucks, EnemyPlugin},
    *,
};

fn main() {
    // Ask user to select algorithm
    let algorithm_choice = select_algorithm();
    
    // Build the app based on choice
    if algorithm_choice == 2 {
        run_astar_app();
    } else {
        run_neural_network_app();
    }
}

fn run_neural_network_app() {
    println!("Running Neural Network + Genetic Algorithm");
    
    App::new()
        .add_plugins(
            DefaultPlugins
                .set(ImagePlugin::default_nearest())
                .set(WindowPlugin {
                    primary_window: Some(Window {
                        resizable: false,
                        focused: true,
                        resolution: (WINDOW_WIDTH, WINDOW_HEIGHT).into(),
                        ..default()
                    }),
                    ..default()
                }),
        )
        .add_plugin(PanCamPlugin::default())
        .add_plugin(DefaultInspectorConfigPlugin)
        .add_plugin(EguiPlugin)
        .add_plugin(RapierPhysicsPlugin::<NoUserData>::pixels_per_meter(100.0))
        .add_plugin(CarPlugin)
        .add_plugin(EnemyPlugin)
        .add_plugin(PopulationPlugin)
        .add_plugin(GuiPlugin)
        .insert_resource(ClearColor(Color::rgb_u8(36, 36, 36)))
        .add_startup_system(setup)
        .add_system(bevy::window::close_on_esc)
        .add_system(camera_follow_system)
        .add_system(settings_system)
        .run();
}

fn run_astar_app() {
    println!("Running A* Pathfinding Algorithm");
    
    App::new()
        .add_plugins(
            DefaultPlugins
                .set(ImagePlugin::default_nearest())
                .set(WindowPlugin {
                    primary_window: Some(Window {
                        resizable: false,
                        focused: true,
                        resolution: (WINDOW_WIDTH, WINDOW_HEIGHT).into(),
                        ..default()
                    }),
                    ..default()
                }),
        )
        .add_plugin(PanCamPlugin::default())
        .add_plugin(DefaultInspectorConfigPlugin)
        .add_plugin(EguiPlugin)
        .add_plugin(RapierPhysicsPlugin::<NoUserData>::pixels_per_meter(100.0))
        .add_plugin(CarPlugin)
        .add_plugin(EnemyPlugin)
        .add_plugin(PathfindingPlugin)
        .add_plugin(AStarPopulationPlugin)
        .add_plugin(GuiPlugin)
        .insert_resource(ClearColor(Color::rgb_u8(36, 36, 36)))
        .add_startup_system(setup)
        .add_system(bevy::window::close_on_esc)
        .add_system(camera_follow_system)
        .add_system(settings_system)
        .run();
}

fn select_algorithm() -> i32 {
    loop {
        println!("\n=== AI Car Simulation ===");
        println!("Select algorithm to test:");
        println!("1. Neural Network + Genetic Algorithm");
        println!("2. A* Pathfinding Algorithm");
        print!("Enter your choice (1 or 2): ");
        
        io::stdout().flush().unwrap();
        
        let mut input = String::new();
        match io::stdin().read_line(&mut input) {
            Ok(_) => {
                match input.trim().parse::<i32>() {
                    Ok(1) | Ok(2) => return input.trim().parse::<i32>().unwrap(),
                    _ => println!("Please enter 1 or 2"),
                }
            }
            Err(_) => println!("Please enter a valid number"),
        }
    }
}

fn setup(
    mut commands: Commands,
    asset_server: Res<AssetServer>,
    mut rapier_config: ResMut<RapierConfiguration>,
) {
    rapier_config.gravity = Vec2::ZERO;

    commands
        .spawn(Camera2dBundle {
            transform: Transform::from_xyz(WINDOW_WIDTH / 2.0, WINDOW_HEIGHT / 2.0, 0.0),
            ..default()
        })
        .insert(PanCam::default());

    spawn_roads(&mut commands, &asset_server);
    spawn_bound_trucks(&mut commands, &asset_server);
}

fn camera_follow_system(
    settings: Res<Settings>,
    max_distance_travelled: Res<MaxDistanceTravelled>,
    mut cam_query: Query<(&Camera, &mut Transform), Without<Car>>,
) {
    let (_, mut cam_transform) = cam_query.get_single_mut().unwrap();
    if settings.is_camera_follow {
        cam_transform.translation = cam_transform.translation.lerp(
            vec3(cam_transform.translation.x, max_distance_travelled.0, 0.0),
            0.05,
        );
    }
}

fn spawn_roads(commands: &mut Commands, asset_server: &AssetServer) {
    // Road
    let rx = WINDOW_WIDTH / 2.0 - 30.0;
    let mut ry = ROAD_SPRITE_H / 2.0 * SPRITE_SCALE_FACTOR;
    for _ in 0..NUM_ROAD_TILES {
        commands.spawn(SpriteBundle {
            transform: Transform::from_xyz(rx, ry, -10.0)
                .with_scale(Vec3::splat(SPRITE_SCALE_FACTOR)),
            texture: asset_server.load("road.png"),
            ..default()
        });
        ry += ROAD_SPRITE_H * SPRITE_SCALE_FACTOR;
    }
    let road_end_y = ry - ROAD_SPRITE_H * SPRITE_SCALE_FACTOR + 800.0;

    // end checker board
    commands.spawn(SpriteBundle {
        transform: Transform::from_xyz(rx, road_end_y - 50.0, -5.0)
            .with_scale(Vec3::splat(SPRITE_SCALE_FACTOR)),
        texture: asset_server.load("end-point.png"),
        ..default()
    });

    // Road colliders
    // left
    let ry = 5.0 * ROAD_SPRITE_H * SPRITE_SCALE_FACTOR;
    let rx_min = ROAD_SPRITE_W / 2.0 * SPRITE_SCALE_FACTOR + 238.0;
    commands.spawn((
        SpriteBundle {
            transform: Transform::from_xyz(rx_min, ry, 0.0).with_scale(vec3(0.5, 0.5, 1.0)),
            ..default()
        },
        RigidBody::Fixed,
        Collider::cuboid(
            5.0,
            ROAD_SPRITE_H * SPRITE_SCALE_FACTOR * NUM_ROAD_TILES as f32 * 5.0,
        ),
    ));
    // right
    let rx_max = ROAD_SPRITE_W * SPRITE_SCALE_FACTOR + 248.0;
    commands.spawn((
        SpriteBundle {
            transform: Transform::from_xyz(rx_max, ry, 0.0).with_scale(vec3(0.5, 0.5, 1.0)),
            ..default()
        },
        RigidBody::Fixed,
        Collider::cuboid(
            5.0,
            ROAD_SPRITE_H * SPRITE_SCALE_FACTOR * NUM_ROAD_TILES as f32 * 5.0,
        ),
    ));
    // top
    commands.spawn((
        SpriteBundle {
            transform: Transform::from_xyz(600.0, road_end_y, 0.0).with_scale(vec3(0.5, 0.5, 1.0)),
            ..default()
        },
        RigidBody::Fixed,
        Collider::cuboid(500.0 * SPRITE_SCALE_FACTOR, 10.0),
    ));
}

fn settings_system(
    mut commands: Commands,
    mut settings: ResMut<Settings>,
    mut sim_stats: ResMut<SimStats>,
    car_query: Query<Entity, With<Car>>,
) {
    if settings.start_next_generation {
        settings.start_next_generation = false;
        car_query.iter().for_each(|c| {
            commands.entity(c).remove::<Car>();
        });
    }
    if settings.restart_sim {
        // force restart
        car_query.iter().for_each(|c| {
            commands.entity(c).remove::<Car>();
        });
        *sim_stats = SimStats::default();
        sim_stats.generation_count = 0;
    }
}