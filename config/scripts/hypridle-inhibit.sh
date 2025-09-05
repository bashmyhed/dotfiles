#!/bin/bash
while true; do
    if playerctl status 2>/dev/null | grep -q "Playing"; then
        hyprctl dispatch idleinhibit on
    else
        hyprctl dispatch idleinhibit off
    fi
    sleep 10
done

