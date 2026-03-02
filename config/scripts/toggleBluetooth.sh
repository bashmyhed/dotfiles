#!/usr/bin/env bash

# Check if bluetooth service is active
if systemctl is-active --quiet bluetooth; then
    sudo systemctl stop bluetooth
    notify-send -r 5000 -t 1000 "Stopped Bluetooth"
else
    sudo systemctl start bluetooth
    notify-send -r 5000 -t 1000 "Started Bluetooth"
fi
