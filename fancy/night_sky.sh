#!/bin/bash

# Define colors
blue='\e[1;34m'
yellow='\e[1;93m'
reset='\e[0m'

# Function to draw stars
draw_stars() {
    for i in {1..30}; do
        x=$((RANDOM % $(tput lines)))
        y=$((RANDOM % $(tput cols)))
        tput cup $x $y
        echo -en "${yellow}*"
    done
}

# Function to display starry sky
display_starry_sky() {
    clear
    draw_stars
    sleep 1
}

# Main function
main() {
    for i in {1..10}; do
        display_starry_sky
    done

    tput cup $(tput lines) 0
}

# Calling the main function
main

