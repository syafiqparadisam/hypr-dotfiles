#!/bin/bash

# Pilih secara acak antara video (1) atau foto (2)
CHOICE=$((RANDOM % 2))

if [ "$CHOICE" -eq 0 ]; then
    ~/.config/waybar/change_wallpaper.sh
else
    ~/.config/waybar/change_wpp_video.sh
fi

