#!/bin/bash
# this is a shell script to control the brightness of your screen 
# use as arguments up / down to change brightness |  works with harmony with ~/.config/dunst/dunsrc
step=5  # Brightness change step

if [[ "$1" == "up" ]]; then
    brightnessctl set +${step}%
elif [[ "$1" == "down" ]]; then
    brightnessctl set ${step}%-
else
    echo "Usage: $0 {up|down}"
    exit 1
fi

# Send notification using your preferred format
dunstify -a brightness -h int:value:$(brightnessctl | grep -oP 'Current brightness:.*\(\K\d+(?=%)') "☀ Brightness" -r 6969 -t 500 -h string:x-dunst-stack-tag:no












# dunstify -a brightness -h int:value:$(brightnessctl | grep -oP 'Current brightness:.*\(\K\d+(?=%)')  "Brightness" -r 6969
