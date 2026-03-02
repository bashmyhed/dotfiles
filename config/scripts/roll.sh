#!/bin/bash

# Generate a random number (0 or 1)
decision=$((RANDOM % 2))

    notify-send "$decision" -t 4500 -h string:x-dunst-stack-tag:no
# Choose "Smash" or "Pass" based on the random number
if [[ $decision -eq 0 ]]; then
    notify-send "🚫 PASS!" -r 2222 -t 500 -h string:x-dunst-stack-tag:no
else
    notify-send "🔥 SMASH!" -r 2222 -t 500 -h string:x-dunst-stack-tag:no
fi

