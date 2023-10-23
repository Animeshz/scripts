#!/bin/bash

# Hide the cursor
tput civis

# Define frames
frame0=(
    " /\_/\  "
    "( o.o )"
    " > ^ < "
    "   Hi!  "
)

frame1=(
    " /\_/\  "
    "( -.- )"
    " > ^ < "
    "   Hi!  "
)

frame2=(
    " /\_/\  "
    "( ^.^ )"
    " > ^ < "
    "   Hi!  "
)

# Function to display a frame with user's name
display_frame() {
    clear
    for line in "${frame[@]}"; do
        if [ "$line" = "   Hi!  " ]; then
            echo "   Hi, $username!"
        else
            echo "$line"
        fi
    done
    sleep 0.5
}

# Main function
main() {
    read -p "Enter your name: " username

    while true; do
        for frame in "${frame0[@]}" "${frame1[@]}" "${frame2[@]}"; do
            display_frame
        done
    done
}

# Calling the main function
main

# Show the cursor
tput cnorm