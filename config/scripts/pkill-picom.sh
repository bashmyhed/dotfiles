#!/bin/bash

PROGRAM_NAME="picom"
PROGRAM_PATH="/usr/bin/picom"    

PID=$(pgrep -x "$PROGRAM_NAME")

if [[ -n "$PID" ]]; then
    kill "$PID"
    if [[ $? -eq 0 ]]; then
	    notify-send "killed picom"
    else
	    notify-send "nah"
        exit 1
    fi
else
    "$PROGRAM_PATH" --config ./.config/scripts/picom.conf &
    if [[ $? -eq 0 ]]; then
	    notify-send "initiated picom"
    else
	    notify-send "initiated nah"
        exit 1
    fi
fi

