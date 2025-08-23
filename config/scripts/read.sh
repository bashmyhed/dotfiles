#!/bin/bash

# Set the folder path - change this to your desired folder
FOLDER_PATH="$HOME/Documents/read"

# Check if folder exists
if [ ! -d "$FOLDER_PATH" ]; then
    echo "Error: Folder '$FOLDER_PATH' does not exist"
    exit 1
fi

# Get folder contents and create menu options
cd "$FOLDER_PATH" || exit 1
files=$(ls -1)

# Check if folder is empty
if [ -z "$files" ]; then
    echo "Error: Folder '$FOLDER_PATH' is empty"
    exit 1
fi

# Display menu with bemenu using the same styling as your example
choice=$(echo "$files" | bemenu \
    -b \
    --fn "JetBrainsMono Nerd Font" \
    --binding vim \
    -R 9 \
    --nb "#000000" --nf "#ffffff" \
    --tb "#000000" --tf "#ffffff" \
    --hb "#000000" --hf "#902DF3" \
    --ab "#000000" --af "#ffffff" \
    --sb "#000000" --sf "#ffffff" \
    --vim-esc-exits \
    --vim-normal-mode \
    -W 0.3 \
    -l 4 \
    --prompt "")

# Check if user made a selection
if [ -n "$choice" ]; then
    # Open the selected file with feh
    nsxiv -b  "$FOLDER_PATH/$choice"
else
    exit 1 # Exit if no selection was made
fi
