#!/usr/bin/env bash

CLASS="$1"
shift

if [ -z "$CLASS" ] || [ "$#" -eq 0 ]; then
    exit 1
fi

WINDOW=$(hyprctl clients -j | jq -r ".[] | select(.class==\"$CLASS\") | .address" | head -n1)

if [ -z "$WINDOW" ]; then
    "$@" &
    exit 0
fi

ACTIVE=$(hyprctl activewindow -j | jq -r ".class")

if [ "$ACTIVE" = "$CLASS" ]; then
    hyprctl dispatch closewindow "class:$CLASS"
else
    hyprctl dispatch focuswindow "class:$CLASS"
fi
