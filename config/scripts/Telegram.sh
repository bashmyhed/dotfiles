#!/usr/bin/env bash

CLASS="io.github.tdesktop_x64.TDesktop"
APP="64gram-desktop"

# get existing window address
WINDOW=$(hyprctl clients -j | jq -r ".[] | select(.class==\"$CLASS\") | .address" | head -n1)

if [ -z "$WINDOW" ]; then
    # no window → spawn
    $APP &
    exit 0
fi

# get active window address
ACTIVE=$(hyprctl activewindow -j | jq -r ".address")

if [ "$ACTIVE" = "$WINDOW" ]; then
    # already focused → kill the window
    hyprctl dispatch closewindow "address:$WINDOW"
else
    # exists but not focused → focus it
    hyprctl dispatch focuswindow "address:$WINDOW"
fi
