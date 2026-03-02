#!/bin/bash

# Switch to next ASUS profile
asusctl profile next

# Get the current active profile
profile=$(asusctl profile get | awk -F": " '/Active profile/ {print $2}')

# Send notification
notify-send -r 8888 -h string:x-dunst-stack-tag:no -t 1000 "$profile"

