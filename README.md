# Windows11ShellResetTool

A PowerShell script to reset the Windows 11 Taskbar pinned apps and Start Menu layout and cache.  
Especially useful for troubleshooting pinning issues or corrupted Start Menu/Taskbar settings.

---

## Features

- Stops and restarts Windows Explorer to apply changes  
- Removes pinned apps shortcuts from the Taskbar  
- Resets Start Menu layout by deleting layout configuration files  
- Clears Start Menu cache to fix glitches  

---

## Usage

1. Download or clone this repository.  
2. Open PowerShell as Administrator.
3. Type this command:
   `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
4. Navigate to the script directory:  
   `cd path\to\script`  
5. Run the script:  
   `.\Windows11ShellResetTool.ps1`  
6. Wait for the script to complete. Explorer will restart automatically.

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

## Disclaimer

Use this script at your own risk. It has been tested on Windows 11 LTSC and similar optimized systems but may behave differently on other setups.

---

## Contributions

Contributions, issues, and feature requests are welcome! Feel free to open an issue or submit a pull request.
