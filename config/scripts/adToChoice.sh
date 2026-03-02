#!/bin/bash

#==============================================================================
# add-bookmark.sh
#
# A script to automatically add a bookmark to a bemenu-based launcher script.
# It fetches the title of the active Firefox window and a URL from the
# clipboard, then injects a new entry into the specified launcher script.
#==============================================================================

# --- CONFIGURATION ---
# IMPORTANT: Set this to the full path of your launcher script!
LAUNCHER_SCRIPT="$HOME/.config/scripts/choice.sh" # Path is now portable

# --- SCRIPT LOGIC ---

# 1. Check if the LAUNCHER_SCRIPT path is valid
if [ ! -f "$LAUNCHER_SCRIPT" ]; then
    notify-send -u critical "Error" "Launcher script not found at '$LAUNCHER_SCRIPT'. Please edit the add-bookmark.sh script."
    exit 1
fi

# 2. Get the active window's class and title using hyprctl and jq
# Ensure the active window is actually Firefox
active_window_info=$(hyprctl activewindow -j)
# if [[ "$(echo "$active_window_info" | jq -r '.class')" != "firefox" ]]; then
#     notify-send "Bookmark Script" "The active window is not Firefox. Aborting."
#     exit 1
# fi

raw_title=$(echo "$active_window_info" | jq -r '.title')

# 3. Get the URL from the Wayland clipboard
url=$(wl-paste)

if [ -z "$url" ] || [[ ! "$url" =~ ^https?:// ]]; then
    notify-send -u critical "Bookmark Script Error" "Clipboard does not contain a valid URL."
    exit 1
fi

# 4. Clean up the title to create a script-friendly entry name
#    - Remove the "— Mozilla Firefox" suffix
#    - Remove all spaces and special characters
#    - Limit to 20 characters to keep it clean
entry_name=$(echo "$raw_title" | sed 's/ — Mozilla Firefox//' | tr -d -c '[:alnum:]' | cut -c 1-20)

if [ -z "$entry_name" ]; then
    notify-send -u critical "Bookmark Script Error" "Could not generate a valid name from the window title."
    exit 1
fi

# 5. Check if an entry with this name already exists to prevent duplicates
if grep -q "\"$entry_name\"" "$LAUNCHER_SCRIPT"; then
    notify-send "Bookmark Script" "An entry named '$entry_name' already exists. Aborting."
    exit 1
fi

# 6. Use sed to add the new entry to the launcher script.
#    This is the core of the script. It performs two insertions.

# First, add the new choice to the `echo` list for bemenu.
# This finds the closing quote before the pipe to bemenu and inserts the new entry at the end of the list.
sed -i "s#\"[[:space:]]*|[[:space:]]*bemenu#\\n$entry_name\" | bemenu#" "$LAUNCHER_SCRIPT"

# Second, add the new `case` block just before the wildcard `*)` line.
# This ensures the new entry is always reachable.
new_case_block="    \"$entry_name\")\n        brave --profile-directory="Default" --reuse-window --new-tab \"$url\"\n        ;;"
sed -i "/^[[:space:]]*\*)/i \\$new_case_block\n" "$LAUNCHER_SCRIPT"

# 7. Notify the user of success
notify-send "Bookmark Added" "Added '$entry_name' to your launcher."
echo "Successfully added '$entry_name' with URL '$url' to $LAUNCHER_SCRIPT"



