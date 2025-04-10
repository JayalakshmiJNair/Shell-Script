#!/bin/bash

# Get the count of logged-in users
user_count=$(who | wc -l)

# Display the count of users
echo "Number of users logged in: $user_count"
