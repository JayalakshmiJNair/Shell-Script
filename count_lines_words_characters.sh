#!/bin/bash

# Initialize counters
line_count=0
word_count=0
char_count=0

# Read input from standard input (keyboard) line by line
while IFS= read -r line; do
    # Exit if the line is empty (user just presses Enter)
    [[ -z "$line" ]] && break

    # Increment line count
    ((line_count++))

    # Count characters and words in the line
    char_count_line=0
    for word in $line; do
        ((word_count++))
        char_count_line=$((char_count_line + ${#word}))
    done
    char_count=$((char_count + char_count_line))

    # Display results after each line
    echo -e "\nLine count: $line_count"
    echo "Word count: $word_count"
    echo "Character count: $char_count"

done

