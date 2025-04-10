#!/bin/bash

while true; do
    # Ask user for the username to monitor
    read -p "Enter the username to monitor: " username

    while true; do
        # Get current timestamp
        timestamp=$(date +"%H:%M:%S")

        # Check if the user is logged in
        if who | grep -q "$username"; then
            echo "[$timestamp] User $username is logged in."
        else
            echo "[$timestamp] User $username is not logged in."
        fi

        # Wait for 30 seconds
        sleep 30
    done
done

