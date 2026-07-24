# Linux Workspace Manager

A beginner-friendly Bash project that automates the creation and inspection of a Linux development workspace.

This project was built to strengthen my Linux command-line skills, Bash scripting, and Git workflow while transitioning into software development and DevOps.

---

## Features

- Create a development workspace automatically
- Generate common project folders
- Check workspace status
- Display system information
- List workspace folders
- Display folder disk usage

---

## Project Structure

```
scripts/
├── setup.sh
└── status.sh
```

---

## Requirements

- Linux or WSL (Ubuntu)
- Bash

---

## Usage

Create a workspace:

```bash
./setup.sh
```

Create a custom workspace:

```bash
./setup.sh DataScience
```

Display workspace information:

```bash
./status.sh
```

---

## Example Output

```text
====================================
 Linux Workspace Status
====================================

Workspace:
/home/user/Workspace

Status:
✓ Workspace exists

Current User:
user

Host:
hostname

Folders:
✓ Projects
✓ Notes
✓ Scripts
✓ Backups
✓ Temp

Folder Sizes:
Projects    8K
Notes       4K
Scripts     4K
```

---

## Skills Practiced

- Linux filesystem navigation
- Bash scripting
- Variables
- Arrays
- Loops
- Functions
- Conditional statements
- Command substitution
- Pipes
- Disk usage analysis
- Git version control

---

## Future Improvements

- Automated backups
- Workspace cleanup
- Configuration file support
- Logging
- Command-line options
- Automated tests
- GitHub Actions CI

---

## Author

David Amakye

GitHub: https://github.com/RealKingDavid
