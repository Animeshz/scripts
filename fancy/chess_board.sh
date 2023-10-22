#!/bin/bash

# Chessboard
printf "▐\033[7m♜\033[0m▌♘▐\033[7m♝\033[0m▌♕▐\033[7m♚\033[0m▌♗▐\033[7m♞\033[0m▌♖
 ♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m"

printf "
"

board_rows=("▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "  ▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "  ▐█▌ ▐█▌ ▐█▌ ▐█▌")

# Function for delay animation
print_board() {
  for row in "${board_rows[@]}"; do
    printf "%s\n" "$row"
    sleep 1  # Delay
  done
}

# Function called
print_board

printf "▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟
 ♜▐\033[7m♘\033[0m▌♝▐\033[7m♕\033[0m▌♚▐\033[7m♗\033[0m▌♞▐\033[7m♖\033[0m"

printf "
"

exit 0