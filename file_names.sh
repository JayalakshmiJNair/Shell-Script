#!/bin/bash

directory="/home/lenovo/Documents"  # The actual path

# Check if the directory exists
if [ -d "$directory" ]; then
    cd "$directory" || exit

    # Counter for serial number
    serial_number=1

    # Print header
    printf "%-4s %-30s %-20s\n" "Serial" "File Name" "Date Created"
    echo "--------------------------------------------------------"

    # Loop through files in the directory
    for file in *; do
        if [ -f "$file" ]; then
            # Get file creation date
            creation_date=$(stat -c %y "$file" | cut -d' ' -f1)

            # Print serial number, file name, and creation date
            printf "%-6s %-30s %-20s\n" "$serial_number" "$file" "$creation_date"

            # Increment serial number
            ((serial_number++))
        fi
    done
else
    echo "Directory $directory does not exist."
fi
