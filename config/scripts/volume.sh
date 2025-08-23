#!/bin/bash
# a shell script to change volume and mute on the fly
# pass arguments up down or mute 
# uses dunst | dunstify to send settings   !!workd in m harmony with ~/.config/dunst/dunstrc

#!/bin/bash

step=5  # Volume change step
icon="🔊"  # Default volume icon

if [[ "$1" == "mute" ]]; then
    pamixer -t  # Toggle mute
    if [[ "$(pamixer --get-mute)" == "true" ]]; then
        dunstify -a volume "🔇 Muted" -r 6949 -t 500 -h string:x-dunst-stack-tag:no
    else
        dunstify -a volume "🔊 Unmuted" -r 6949 -t 500 -h string:x-dunst-stack-tag:no

    fi
    exit 0
elif [[ "$1" == "up" ]]; then
    pamixer -i $step
    volume=$(pamixer --get-volume)
elif [[ "$1" == "down" ]]; then
    pamixer -d $step
    volume=$(pamixer --get-volume)
else
    echo "Usage: $0 {up|down|mute}"
    exit 1
fi

dunstify -a volume -h int:value:$volume "$icon Volume" -r 6949 -t 500 -h string:x-dunst-stack-tag:no
