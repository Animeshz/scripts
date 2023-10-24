#!/bin/bash

# Function to display a progress bar animation
display_progress_bar() {
    local width=50
    local duration=$1

    for ((i = 0; i <= width; i++)); do
        percentage=$((i * 2))
        completed=$((i * width / 100))
        remaining=$((width - completed))
        
        # Print the progress bar
        echo -ne "\r["
        for ((j = 0; j < completed; j++)); do
            echo -n "="
        done
        for ((j = 0; j < remaining; j++)); do
            echo -n ""
        done
        echo -ne "] $percentage%"
        
        # Sleep for a short duration to create animation effect
        sleep "$duration"
    done

    # Print a newline character to clear the progress bar line
    echo
}

# Main function
main() {
    echo "Starting the task..."
    display_progress_bar 0.1
    echo "Task completed!"
}

# Calling the main function
main
