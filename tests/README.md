# 🧪 Tests (`tests`)

The `tests` directory contains all automated and manual tests to ensure the stability, functionality, and performance of **Magic World**.

## 📂 Folder Structure

```
tests/
│── unit/           # Unit tests for individual functions and components
│── integration/    # Tests that verify multiple components work together
│── performance/    # Benchmarks and stress tests
│── manual/         # Documentation for manual testing procedures
```

### ✅ **Unit Tests (`unit/`)**
- Focus on **small, isolated components** of the game, such as:
  - Game mechanics functions (e.g., movement, combat, AI decisions)
  - UI elements (e.g., buttons, menus, inventory interactions)
  - Core calculations (e.g., physics, damage, experience points)

### 🔗 **Integration Tests (`integration/`)**
- Ensure different game components work together, such as:
  - Player interactions with the game world
  - Synchronization between client and server in multiplayer mode
  - AI decision-making in dynamic environments

### ⚡ **Performance Tests (`performance/`)**
- Benchmark and stress test the game to optimize:
  - **Frame rates** (FPS) across various hardware configurations
  - **Memory usage** during intensive gameplay
  - **Network latency** for online multiplayer sessions

### 📝 **Manual Testing (`manual/`)**
- Contains test plans and checklists for:
  - New features and game updates
  - Regression testing before releases
  - Bug reproduction steps and reporting

## 🚀 Running Tests

Ensure all dependencies are installed before running tests.  
To execute automated tests, follow the instructions in [`CONTRIBUTING.md`](../docs/CONTRIBUTING.md).

## 🐞 Reporting Issues
If you find a bug or issue, please report it in the [GitHub Issues](https://github.com/your-org/Magic-World/issues) section with detailed steps to reproduce.

---

📜 **License:** This project follows the **MIT License**. See [`LICENSE`](../LICENSE) for details.  
🎮 **More Info:** Visit the [Main README](../README.md) for an overview of Magic World.
