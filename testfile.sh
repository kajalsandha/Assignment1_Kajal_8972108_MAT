#!/bin/bash

echo "Starting the script..."

# Get input values
height=$1
width=$2
length=$3

echo "Height: $height, Width: $width, Length: $length"

# Validate inputs to ensure they are positive numbers greater than zero
if ! [[ "$height" =~ ^[1-9][0-9]*([.][0-9]+)?$ ]] || 
   ! [[ "$width" =~ ^[1-9][0-9]*([.][0-9]+)?$ ]] || 
   ! [[ "$length" =~ ^[1-9][0-9]*([.][0-9]+)?$ ]]; then
    echo "Error: All inputs must be positive numbers greater than zero."
fi

# Calculate the volume using bc (Basic Calculator)
volume=$(echo "$height * $width * $length" | bc)

echo "Calculated Volume: $volume"

# Output the result
echo "The volume is: $volume"

