#!/bin/bash
# Prompt the user to enter the directory path
read -p "Enter the directory path: " directory
# Check if the directory exists
if [ -d "$directory" ]; then
    # List files in the directory
    echo "Files in $directory:"
    ls "$directory"
else
    echo "Directory $directory does not exist."
fi
