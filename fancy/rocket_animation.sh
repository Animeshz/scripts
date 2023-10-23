#!/bin/bash

# Define colors
blue='\e[1;34m'
red='\e[1;91m'
reset='\e[0m'

# Function to draw rocket
draw_rocket() {
    clear
    echo -e "${red}           _"
    echo -e "          /^\\"
    echo -e "          | |"
    echo -e "          | |"
    echo -e "          | |"
    echo -e "          | |"
    echo -e "         /| |\\"
    echo -e "        / | | \\"
    echo -e "       /__|_|__\\${reset}"
}

# Function to display rocket animation
display_rocket_animation() {
    for i in {1..10}; do
        draw_rocket
        sleep 0.2
        draw_rocket
        sleep 0.2
    done
}

# Main function
main() {
    display_rocket_animation
    tput cup $(tput lines) 0
}

# Calling the main function
main
