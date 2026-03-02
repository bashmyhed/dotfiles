#!/usr/bin/env bash

PID_FILE="/tmp/kdeconnect_monitor.pid"
echo $$ > "$PID_FILE"
trap 'rm -f "$PID_FILE"; exit 0' SIGTERM SIGINT

interval=5
notify_id=4242

while true; do
    output="$(kdeconnect-cli -a --id-only 2>/dev/null)"

    # If output is exactly "0 devices found" OR empty → disconnected
    if [[ -z "$output" || "$output" == "0 devices found" ]]; then
        notify-send -r "$notify_id" -u critical "kdeconnect not connected"

        # Restart daemon cleanly
        pkill -x kdeconnectd 2>/dev/null
        sleep 1
        kdeconnectd &
        disown

        sleep "$interval"
    else
        notify-send -r "$notify_id" -t 1000 "kdeconnect connected"
        exit 0
    fi
done
