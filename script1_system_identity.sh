#!/bin/bash
# Script 1: System Identity Report
# Author: Imran Farhat | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Imran Farhat"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)              # Kernel version
USER_NAME=$(whoami)             # Current logged-in user
UPTIME=$(uptime -p)             # System uptime

# --- Additional Info ---
DISTRO=$(lsb_release -d | cut -f2)   # Linux distribution name
HOME_DIR=$HOME                       # User home directory
DATE=$(date)                         # Current date and time

# --- Display ---
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Chosen     : $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "Linux Distribution  : $DISTRO"
echo "Kernel Version      : $KERNEL"
echo "Logged-in User      : $USER_NAME"
echo "Home Directory      : $HOME_DIR"
echo "System Uptime       : $UPTIME"
echo "Current Date & Time : $DATE"
echo "----------------------------------------"
echo "License             : Linux Kernel is licensed under GPL v2"
echo "========================================"
