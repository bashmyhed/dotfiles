#!/bin/bash

FOLDER_PATH="$HOME/Games/.wine64/drive_c/Games"

[ -d "$FOLDER_PATH" ] || exit 1

cd "$FOLDER_PATH" || exit 1

# list only directories
dirs=$(find . -maxdepth 1 -mindepth 1 -type d -printf "%f\n")

[ -z "$dirs" ] && exit 1

choice=$(echo "$dirs" | bemenu \
    -b \
    --fn "JetBrainsMono Nerd Font" \
    --binding vim \
    -R 9 \
    -B 1 \
    -R 4 \
    --bdr "#263238FF" \
    --nb "#181825d9" --nf "#ffffff" \
    --tb "#181825d9" --tf "#ffffff" \
    --hb "#181825d9" --hf "#89b4fa" \
    --ab "#181825d9" --af "#ffffff" \
    --sb "#181825d9" --sf "#ffffff" \
    --cb "#181825d9" --cf "#ffffff" \
    --fb "#181825d9" --ff "#ffffff" \
    --vim-esc-exits \
    --vim-normal-mode \
    -W 0.3 \
    -l 4 \
    --prompt "")

[ -z "$choice" ] && exit 1

GAME_DIR="$FOLDER_PATH/$choice"

# find first exe in that folder
exe=$(find "$GAME_DIR" -maxdepth 1 -type f -iname "*.exe" | head -n 1)

[ -z "$exe" ] && exit 1

prime-run gamemoderun umu-run "$exe"
