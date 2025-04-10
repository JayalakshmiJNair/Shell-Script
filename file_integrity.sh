#!/bin/bash

echo 'To test integrity of a file  in a directory at '$PWD
read -p "Enter the name of file: " file
# Function to calculate hash for a file
calculate_hash() {
    sha256sum $file | awk '{print $1}'
}

# Check if file exists
if [ ! -f $file ]; then
    echo "File does not exist"
    exit 1
fi

# Calculate hash for the file
original_hash=$(calculate_hash $file)

echo "Original hash: $original_hash"

# Wait for user to make changes to the file
read -p "Make changes to the file and press Enter when done"

# Calculate hash again after changes
new_hash=$(calculate_hash $file)

echo "New hash: $new_hash"

# Compare hashes to check for changes
if [ "$original_hash" == "$new_hash" ]; then
    echo "File integrity is intact"
else
    echo "File has been modified"
fi

