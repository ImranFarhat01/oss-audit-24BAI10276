#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Imran Farhat | Course: Open Source Software

# --- List of directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo " Directory Audit Report"
echo "========================================"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then

  # Get permissions, owner, and group
  PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

  # Get size of directory (human readable)
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

  # Print result
  echo "$DIR => Permissions: $PERMS | Size: $SIZE"

 else
  echo "$DIR does not exist on this system"
 fi
done

echo "----------------------------------------"

# --- Check config directory for chosen software (Git) ---
CONFIG_DIR="/etc/gitconfig"

if [ -f "$CONFIG_DIR" ]; then
 echo "Git config file exists: $CONFIG_DIR"
 ls -l $CONFIG_DIR
else
 echo "Git config file not found in /etc"
fi

echo "========================================"
