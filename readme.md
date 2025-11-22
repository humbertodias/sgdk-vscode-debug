# SGDK Debugging in VSCode

### How It Works

1. **VSCode** starts the debug session.
2. **GDB Multiarch** loads **`rom.out`** (an ELF with symbols).
3. **BlastEm** loads **`rom.bin`** (a raw Sega Genesis m68k ROM).
4. **GDB** connects to BlastEm and controls execution:
   * Breakpoints
   * Stepping
   * Inspecting memory and variables
5. All debug information flows back into **VSCode**.

### Demo

https://github.com/user-attachments/assets/a77e0469-bfbd-421e-b953-4df9203399a4

### Requirements

* [Docker](https://www.docker.com/get-started/) (optional, if using containerized SGDK environment)
* [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) or any Linux distribution
* [VSCode](https://code.visualstudio.com/download)
* [C/C++ extension for VSCode](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
* [BlastEm Emulator](https://www.retrodev.com/blastem/) (for Sega Genesis ROMs)
