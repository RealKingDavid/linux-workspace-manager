# Linux Concepts Learned

## PATH

The PATH environment variable tells the shell where to search for executable programs.

---

## Bash Variables

Variables store values that can be reused throughout a script.

Example:

```bash
WORKSPACE="$HOME/Workspace"
```

---

## Command Substitution

Store command output inside variables.

```bash
CURRENT_DATE=$(date)
```

---

## Loops

Use loops to process multiple files or directories.

```bash
for folder in $(find ...)
```

---

## Functions

Functions organize code into reusable blocks.

```bash
show_folders()
```

---

## Disk Usage

The `du` command reports the disk usage of files and directories.

```bash
du -sh
```
