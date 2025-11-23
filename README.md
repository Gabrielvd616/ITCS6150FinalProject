# Autonomous Vehicle Navigation System

This repository contains a comprehensive autonomous vehicle navigation system implemented in Rust using the Bevy game engine and Rapier physics. The system features two control approaches: Neural Network + Genetic Algorithm (NN+GA) for learning to navigate through evolutionary improvements, and A* Pathfinding for obstacle-aware grid-based navigation.

---

## Table of Contents

- [Installation & Setup](#installation--setup)
- [System Run Instructions](#system-run-instructions)
- [Folder Structure](#folder-structure)
- [Demo Video](#demo-video)

---

## Installation & Setup

### Prerequisites

Ensure the following software is installed on your system:

- **Rust (stable)**: [https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install)  
  Verify installation:  
  ```bash
  rustc --version
  ```
- **Git**: [https://git-scm.com/](https://git-scm.com/)  
  Verify installation:  
  ```bash
  git --version
  ```
- **(Optional) Tectonic** (for building the PDF manual):  
  Install via cargo:  
  ```bash
  cargo install tectonic
  ```  
  Or download from [Tectonic releases](https://github.com/tectonic-typesetting/tectonic/releases).

### Clone the Repository

Open a terminal and run:

```bash
git clone https://github.com/Gabrielvd616/ITCS6150FinalProject.git
cd ITCS6150FinalProject
```

### Build the Project

Use Cargo to compile in release mode for better performance:

```bash
cargo build --release
```

*Note:* Building in debug mode is possible but may be slower.

### Ensure Graphics Drivers Are Up-to-Date

- For Windows and macOS, update your GPU drivers to the latest version.
- On Linux, ensure your graphics stack is current.

---

## Running the System

### Launch the Simulation

In your terminal, run:

```bash
cargo run --release
```

Upon launch, you will be prompted to select between:

- **1**: Neural Network + Genetic Algorithm (NN+GA)
- **2**: A* Pathfinding

Enter your choice (1 or 2) and press Enter.

### Window Settings

The simulation window has a fixed size defined in `src/configs.rs`. You can modify the resolution there if needed.

---

## Folder Structure

```plaintext
assets/           # Textures, fonts, sprites used in the simulation
src/              # Rust source code
+-- main.rs       # Entry point; initializes app and prompts for algorithm choice
+-- lib.rs        # Re-exports modules and configurations
+-- configs.rs    # Global constants and configuration parameters
+-- resources.rs  # Runtime resources such as settings and stats
+-- gui.rs        # GUI elements and in-game user interface
+-- car.rs        # Car components, sensors, neural network inference
+-- population.rs # NN+GA population management, evolution, and spawning
+-- nn.rs         # Neural network implementation
+-- pathfinding.rs# A* grid, pathfinding algorithms
+-- enemy.rs      # Enemy vehicle spawning and behavior
+-- road.rs       # Road rendering stub
+-- ...           # Additional modules as needed
Cargo.toml        # Rust package manifest with dependencies
README.md         # This documentation file
docs/             # User manual and documentation
make-doc.ps1      # Windows script to build manual PDF
```

---

## Demonstration Video

See the system in action here:  
[https://drive.google.com/file/d/1pnjU6Bcut7iaLRXu78R0Mg0pLg9JYwon/view?usp=sharing](https://drive.google.com/file/d/1pnjU6Bcut7iaLRXu78R0Mg0pLg9JYwon/view?usp=sharing)

---

## Additional Notes

- You can tweak parameters such as sensor count, neural network size, and pathfinding grid in `src/configs.rs` to customize behavior.
- For extending the system, consider adding new sensors, modifying the neural network architecture, or introducing new obstacle types.


