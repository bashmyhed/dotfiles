#!/bin/bash

# Define a state file in the temporary directory
STATE_FILE="/tmp/hypr_animations_enabled"

if [ -f "$STATE_FILE" ]; then
    # If the file exists, animations are ON, so turn them OFF
    hyprctl keyword animations:enabled false
    rm "$STATE_FILE"
    notify-send "Hyprland Animations" "Disabled 禁用" -u low -t 400 -r 2999
else
    # If the file does not exist, animations are OFF, so turn them ON
    hyprctl keyword animations:enabled true
    touch "$STATE_FILE"
    notify-send "Hyprland Animations" "Enabled 启用" -u low -t 400 -r 2999
fi
