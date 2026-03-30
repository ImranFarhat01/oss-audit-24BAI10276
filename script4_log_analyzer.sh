#!/bin/bash
# Script 4: Log File Analyzer
# Author: Imran Farhat | Course: Open Source Software

# --- Input arguments ---
LOGFILE=$1                      # Log file path (argument 1)
KEYWORD=${2:-"error"}           # Keyword to search (default = "error")
COUNT=0                         # Counter for matching lines

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 exit 1
fi

# --- Retry if file is empty (do-while style) ---
if [ ! -s "$LOGFILE" ]; then
 echo "Warning: File is empty. Retrying..."
 sleep 2
 if [ ! -s "$LOGFILE" ]; then
  echo "File is still empty. Exiting."
  exit 1
 fi
fi

# --- Read file line by line ---
while IFS= read -r LINE; do

 # Check if line contains keyword (case-insensitive)
 if echo "$LINE" | grep -iq "$KEYWORD"; then
  COUNT=$((COUNT + 1))
 fi

done < "$LOGFILE"

# --- Print summary ---
echo "----------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Print last 5 matching lines ---
echo "----------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "========================================"
