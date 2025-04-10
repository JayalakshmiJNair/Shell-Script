#!/bin/bash

# Set the directory path
directory="./"

# Check if the directory exists, if not, create it
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
fi

# Change to the directory
cd "$directory" || exit

# Create a new file
touch new_file.txt

echo "File 'new_file.txt' created in $directory"
