#!/usr/bin/env bash

PROGRAM_NAME="waybar"
PROGRAM_PATH="/usr/bin/$PROGRAM_NAME"    

PID=$(pgrep -x "$PROGRAM_NAME")

if [[ -n "$PID" ]]; then
    kill "$PID"
else
    "$PROGRAM_PATH"
fi

