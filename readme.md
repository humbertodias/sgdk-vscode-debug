# SGDK Debugging in VSCode

### How It Works

1. **VSCode** launches a debug session using your `launch.json` configuration.
2. **GDB Multiarch** connects to **BlastEm** through a remote pipe or port.
3. **BlastEm Emulator** loads your ROM and executes instructions.
4. **GDB** controls execution:

   * Sets breakpoints and watchpoints.
   * Steps through code.
   * Inspects memory, registers, and variables.
5. Execution feedback flows back to **VSCode** for visualization and control.

## Demo

https://github.com/user-attachments/assets/a77e0469-bfbd-421e-b953-4df9203399a4

## Requirements

* [Docker](https://www.docker.com/get-started/) (optional, if using containerized SGDK environment)
* [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) or any Linux distribution
* [VSCode](https://code.visualstudio.com/download)
* [C/C++ extension for VSCode](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
* [BlastEm Emulator](https://www.retrodev.com/blastem/) (for Sega Genesis ROMs)
