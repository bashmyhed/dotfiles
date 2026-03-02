#!/usr/bin/env bash

state_dir="/tmp/states"
committed="$state_dir/hypr_mode_committed"
preview="$state_dir/hypr_mode_preview"
last_event="$state_dir/hypr_mode_last_event"

delay=1

mkdir -p "$state_dir"
[[ -f "$committed" ]] || echo 0 > "$committed"

# determine base mode
if [[ -f "$preview" ]]; then
    base=$(cat "$preview")
else
    base=$(cat "$committed")
fi

next=$(( (base + 1) % 3 ))
echo "$next" > "$preview"

# write current timestamp (nanoseconds)
event_time=$(date +%s%N)
echo "$event_time" > "$last_event"

# immediate preview notification
case "$next" in
    0) notify-send -r 2222 -t 1000 "Nerd" ;;
    1) notify-send -r 2222 -t 1000 "Ultra gaming" ;;
    2) notify-send -r 2222 -t 1000 "Normal" ;;
esac

(
    sleep "$delay"

    current_event=$(cat "$last_event" 2>/dev/null)
    [[ "$current_event" != "$event_time" ]] && exit 0

    mode=$(cat "$preview" 2>/dev/null)
    rm -f "$preview"

    case "$mode" in
        0)
            notify-send -r 2222 -t 1000 "Nerd committed"

            asusctl profile set Quiet
            hyprctl keyword animations:enabled 0
            rm -f /tmp/hypr_animations_enabled

            cat > ~/.config/hypr/hyprpaper.conf <<EOF
wallpaper {
    monitor = eDP-1
    path = /home/paul/Pictures/wallpaper/nerd/room.jpg
    fit_mode = cover
}
splash = false
EOF

            pkill -x hyprpaper 2>/dev/null
            hyprpaper &

            pgrep -x waybar >/dev/null || waybar &
            pgrep -x kdeconnectd >/dev/null || kdeconnectd &
            "$HOME/.config/scripts/checkConnect.sh" &
            pgrep -f vesktop >/dev/null || vesktop --start-minimized &
            pgrep -x thunar >/dev/null || thunar --daemon &
            ;;
        1)
            notify-send -r 2222 -t 1000 "Ultra Gaming committed"

            asusctl profile set Performance
            hyprctl keyword animations:enabled 0
            rm -f /tmp/hypr_animations_enabled
            hyprctl keyword decoration:active_opacity 1
            hyprctl keyword decoration:inactive_opacity 1

            pkill -x waybar 2>/dev/null
            pkill -x thunar 2>/dev/null
            pkill -x hyprpaper 2>/dev/null
            pkill -x kdeconnectd 2>/dev/null
            pkill -f vesktop 2>/dev/null
            pkill -x brave 2>/dev/null
            ;;
        2)
            notify-send -r 2222 -t 1000 "Normal committed"

            cat > ~/.config/hypr/hyprpaper.conf <<EOF
wallpaper {
    monitor = eDP-1
    path = /home/paul/Pictures/wallpaper/common/pxfuel.jpg
    fit_mode = cover
}
splash = false
EOF

            pkill -x hyprpaper 2>/dev/null
            hyprpaper &

            asusctl profile set Quiet
            hyprctl reload
            touch /tmp/hypr_animations_enabled

            pkill -x waybar 2>/dev/null

            pgrep -f vesktop >/dev/null || vesktop --start-minimized &
            pgrep -x thunar >/dev/null || thunar --daemon &
            pgrep -x kdeconnectd >/dev/null || kdeconnectd &
            "$HOME/.config/scripts/checkConnect.sh" &
            ;;
    esac

    echo "$mode" > "$committed"
) &

disown
