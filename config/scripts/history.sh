#!/bin/sh
#this is to make cliphist constantly get updated with the latest copy

while true; do
    xclip -selection clipboard -o 2>/dev/null | cliphist store
    sleep 0.5  # Adjust timing if needed
done

