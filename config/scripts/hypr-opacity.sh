#!/bin/bash

# Get current global opacity value
CURRENT_OPACITY=$(hyprctl -j getoption "decoration:active_opacity" | jq -r '.float')

# Toggle between 1.0 and 0.85
if [[ "$CURRENT_OPACITY" == "1.000000" ]]; then
    hyprctl reload
    dunstify -u normal "Ativated transparency"
else
    hyprctl keyword decoration:active_opacity 1
    hyprctl keyword decoration:inactive_opacity 1
    dunstify -u normal "Deactivated transparency"
fi

