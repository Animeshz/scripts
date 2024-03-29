#!/bin/bash
#
# Chessboard

printf "▐\033[7m♜\033[0m▌♘▐\033[7m♝\033[0m▌♕▐\033[7m♚\033[0m▌♗▐\033[7m♞\033[0m▌♖
 ♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m▌♙▐\033[7m♟\033[0m\n"

board_rows=("▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "  ▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "▐█▌ ▐█▌ ▐█▌ ▐█▌"
  "  ▐█▌ ▐█▌ ▐█▌ ▐█▌")

print_board() {
  for row in "${board_rows[@]}"; do
    echo "$row"
  done
}

print_board

printf "▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟▐\033[7m♙\033[0m▌♟
 ♜▐\033[7m♘\033[0m▌♝▐\033[7m♕\033[0m▌♚▐\033[7m♗\033[0m▌♞▐\033[7m♖\033[0m\n"
