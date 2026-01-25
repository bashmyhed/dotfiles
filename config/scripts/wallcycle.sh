#!/bin/bash

WALLDIR="$HOME/Pictures/wallpaper"
STATE="$HOME/.cache/wallpaper_index"
OUTPUT="eDP-1"  # change this to your monitor name (use `hyprctl monitors`)

# Get list of wallpapers
mapfile -t WALLS < <(find "$WALLDIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.webp' \) | sort)

TOTAL=${#WALLS[@]}
if [ "$TOTAL" -eq 0 ]; then
    echo "No wallpapers found in $WALLDIR"
    exit 1
fi

# Read current index or start at 0
if [ -f "$STATE" ]; then
    INDEX=$(<"$STATE")
else
    INDEX=0
fi

# Calculate next index
INDEX=$(( (INDEX + 1) % TOTAL ))
echo "$INDEX" > "$STATE"

# Set wallpaper
WALL="${WALLS[$INDEX]}"


cat <<EOF > ~/.config/hypr/hyprpaper.conf
wallpaper {
    monitor = $OUTPUT
    path = $WALL
    fit_mode = cover
}
splash = false
EOF

# Restart hyprpaper to apply
killall hyprpaper 2>/dev/null
hyprpaper &

