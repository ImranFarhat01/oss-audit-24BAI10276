#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Imran Farhat | Course: Open Source Software

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date and Output File ---
DATE=$(date '+%d %B %Y')                 # Current date
OUTPUT="manifesto_$(whoami).txt"        # Output file name

# --- Generate Manifesto ---
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Author: Imran Farhat" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

# Compose paragraph using user inputs
echo "On $DATE, I believe that open source is about $FREEDOM. I use $TOOL in my daily work, which shows the power of community-driven software. I aspire to build $BUILD and share it freely with others so that knowledge and innovation can grow without restrictions." >> $OUTPUT

echo "" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT

# --- Display Output ---
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

# --- Note on alias concept ---
# Example: alias runmanifesto='./script5_manifesto_generator.sh'
