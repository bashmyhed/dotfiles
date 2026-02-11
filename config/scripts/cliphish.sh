#!/bin/sh

# Detect session type
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    # Running on Wayland
    cliphist list | bemenu -b -l 5 -B 0 --fn "JetBrainsMono Nerd Font" -R 4 \
        --binding vim  \
        --nb "#181825d9" --nf "#ffffff" \
        --tb "#181825d9" --tf "#ffffff" \
        --hb "#181825d9" --hf "#89b4fa" \
        --ab "#181825d9" --af "#ffffff" \
        --sb "#181825d9" --sf "#ffffff" \
        --cb "#181825d9" --cf "#ffffff" \
        --fb "#181825d9" --ff "#ffffff" \
        --vim-normal-mode --vim-esc-exits --prompt "" \
        | cliphist decode | wl-copy
else
    # Running on Xorg
    cliphist list | bemenu -b -l 5 -B 0 --fn "JetBrainsMono Nerd Font" \
        --binding vim --nb "#000000" --nf "#ffffff" --tb "#000000" --tf "#ffffff" \
        --hb "#000000" --hf "#89b4fa" --ab "#000000" --af "#ffffff" \
        --sb "#000000" --sf "#ffffff" --vim-normal-mode --vim-esc-exits --prompt "" \
        | cliphist decode | xclip -selection clipboard
fi

