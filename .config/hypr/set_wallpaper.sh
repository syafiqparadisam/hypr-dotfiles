#!/bin/bash
# Skrip untuk mengganti wallpaper dengan file yang diberikan sebagai parameter

IMAGE_PATH=$1  # Ambil parameter pertama (file gambar)
MONITOR="eDP-1"  # Ganti dengan monitor yang sesuai jika diperlukan

# Periksa apakah file ada
    hyprctl hyprpaper preload "$HOME/backgrounds/$IMAGE_PATH" && 
	    hyprctl hyprpaper wallpaper "$MONITOR,$HOME/backgrounds/$IMAGE_PATH"

