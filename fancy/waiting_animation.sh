#!/bin/bash

# Define an array of spinner characters
spinner=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")

# Define colors using ANSI escape codes
green='\e[32m'
blue='\e[34m'
reset='\e[0m'

# Function to display a waiting animation with colors
display_waiting_animation() {
    local delay=0.1
    local i=0

    while true; do
        echo -n -e "\r[${green}${spinner[i]}${reset}] ${blue}Waiting...${reset}   "
        i=$(( (i + 1) % ${#spinner[@]} ))
        sleep $delay
    done
}

# Main function
main() {
    # Start the waiting animation in the background
    display_waiting_animation &

    # Simulate some work (replace this with your actual task)
    sleep 5

    # Stop the waiting animation by killing its background process
    kill $!

    # Clear the line after the animation is done
    echo -e "\r\033[K${green}Done!${reset}"
}

# Calling the main function
main
