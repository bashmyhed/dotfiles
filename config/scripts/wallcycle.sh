#!/bin/bash

MODE_FILE="/tmp/states/hypr_mode_committed"
MODE="$(cat "$MODE_FILE" 2>/dev/null || echo 0)"

BASE="$HOME/Pictures/wallpaper"
COMMON="$BASE/common"
NERD="$BASE/nerd"

RUNTIME="$HOME/.cache/hypr_wall_runtime"
STATE="$HOME/.cache/wallpaper_index"
OUTPUT="eDP-1"  # change this to your monitor name

mkdir -p "$RUNTIME"
rm -rf "$RUNTIME"/*

case "$MODE" in
    0)
        # Nerd mode → only nerd wallpapers
        find "$NERD" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.webp' \) \
            -exec ln -s {} "$RUNTIME" \; 2>/dev/null
        ;;
    1|2)
        # Other modes → common + nerd
        find "$COMMON" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.webp' \) \
            -exec ln -s {} "$RUNTIME" \; 2>/dev/null
        find "$NERD" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.webp' \) \
            -exec ln -s {} "$RUNTIME" \; 2>/dev/null
        ;;
esac

WALLDIR="$RUNTIME"

# Follow symlinks when collecting wallpapers
mapfile -t WALLS < <(find -L "$WALLDIR" -type f | sort)

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

# If index exceeds total (mode changed), reset safely
if [ "$INDEX" -ge "$TOTAL" ]; then
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

pkill -x hyprpaper 2>/dev/null
hyprpaper &
