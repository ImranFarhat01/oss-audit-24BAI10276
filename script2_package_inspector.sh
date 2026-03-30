#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Imran Farhat | Course: Open Source Software

# --- Package Name ---
PACKAGE="git"   # Name of the package to check

# --- Check if package is installed ---
# Using dpkg (since Ubuntu does not use rpm)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
 echo "$PACKAGE is installed."

 # Display package details (only exact match)
 dpkg -l | grep "^ii  $PACKAGE "
else
 echo "$PACKAGE is NOT installed."
fi

echo "----------------------------------------"

# --- Case Statement: Philosophy Note ---
# Prints a one-line description based on package name
case $PACKAGE in
 git)
  echo "Git: a distributed version control system that enables collaborative development."
  ;;
 apache2)
  echo "Apache: the web server that built the open internet."
  ;;
 mysql)
  echo "MySQL: open source at the heart of millions of applications."
  ;;
 vlc)
  echo "VLC: a free media player that supports almost all formats."
  ;;
 *)
  echo "Unknown package."
  ;;
esac
