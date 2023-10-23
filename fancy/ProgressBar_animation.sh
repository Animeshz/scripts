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
        echo -n -e "\r[${green}${spinner[i]}${reset}] ${blue}Loading...${reset}   "
        i=$(( (i + 1) % ${#spinner[@]} ))
        sleep $delay
    done
}

# Function to display a progress bar
display_progress_bar() {
    local duration=$1
    local progress=0
    local width=50

    while [ $progress -lt 100 ]; do
        progress=$((progress + 2))
        completed=$((progress * width / 100))
        remaining=$((width - completed))
        echo -ne "\r[${green}${spinner[$((progress % ${#spinner[@]}))]}${reset}] ${blue}Progress: [${green}"
        for ((i = 0; i < completed; i++)); do
            echo -n "="
        done
        for ((i = 0; i < remaining; i++)); do
            echo -n " "
        done
        echo -ne "] ${progress}%${reset}"
        sleep "$duration"
    done
}

# Main function
main() {
    # Start the waiting animation in the background
    display_waiting_animation &

    # Simulate some work with a progress bar
    display_progress_bar 0.1

    # Stop the waiting animation by killing its background process
    kill $!

    # Clear the line after the animation is done
    echo -e "\r\033[K${green}Done!${reset}"
}

# Calling the main function
main