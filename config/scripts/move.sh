#!/usr/bin/env bash

WIN_W=502
WIN_H=284

MARGIN_L=4
MARGIN_R=4
MARGIN_T=41
MARGIN_B=4

MON_W=1920
MON_H=1080

# read MON_W MON_H < <(hyprctl monitors -j | jq -r '.[0] | "\(.width) \(.height)"')

case "$1" in
  left)
    X=$MARGIN_L
    Y=$MARGIN_T
    ;;
  right)
    X=$((MON_W - WIN_W - MARGIN_R))
    Y=$MARGIN_T
    ;;
  up)
    X=$((MON_W - WIN_W - MARGIN_R))
    Y=$MARGIN_T
    ;;
  down)
    X=$((MON_W - WIN_W - MARGIN_R))
    Y=$((MON_H - WIN_H - MARGIN_B))
    ;;
esac

hyprctl dispatch movewindowpixel exact "$X" "$Y" "title:Picture in picture"
hyprctl dispatch movewindowpixel exact "$X" "$Y" "title:brave-ponfpcnoihfmfllpaingbgckeeldkhle-Default"
hyprctl dispatch movewindowpixel exact "$X" "$Y" "initialTitle:Receiving files — KDE Connect Daemon"
