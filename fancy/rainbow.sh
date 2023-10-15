#!/bin/bash

# Define colors
red='\e[1;31m'
orange='\e[1;33m'
yellow='\e[1;93m'
green='\e[1;32m'
blue='\e[1;34m'
indigo='\e[1;94m'
violet='\e[1;35m'
reset='\e[0m'

# Rainbow colors array
colors=($red $orange $yellow $green $blue $indigo $violet)

# Function to draw rainbow line
draw_rainbow_line() {
    for color in "${colors[@]}"; do
        echo -en "$color#####"
        sleep 0.1
    done
    echo -e "$reset"
}

# Function to draw the rainbow
draw_rainbow() {
    clear
    for i in {1..7}; do
        draw_rainbow_line
        sleep 0.1
    done
}

# Main function
main() {
    draw_rainbow
    echo "Rainbow has been drawn!"
}

# Call the main function
main
