# SGDK Debugging in VSCode

```mermaid
sequenceDiagram
    participant VSCode
    participant GDB as GDB Multiarch
    participant BlastEm as BlastEm Emulator
    participant ROM as Sega Genesis ROM

    VSCode->>GDB: Start debug session (launch.json)
    GDB->>BlastEm: Connect remotely (pipe or port)
    BlastEm->>ROM: Load ROM
    GDB->>ROM: Set breakpoints, watchpoints
    ROM->>BlastEm: Execute instructions
    BlastEm->>GDB: Return CPU state, memory, registers
    GDB->>VSCode: Update variables, display breakpoints
    VSCode->>GDB: Step, continue, inspect variables
    GDB->>ROM: Continue execution


```

## Requirements
- [Docker](https://www.docker.com/get-started/)
- [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) or any linux distro
- [VSCode](https://code.visualstudio.com/download)
- [C/C++ extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
- [blastem](https://www.retrodev.com/blastem/) Genesis emulator
