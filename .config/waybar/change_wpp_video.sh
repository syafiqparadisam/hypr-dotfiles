#!/bin/sh

# Tentukan folder tempat file video wallpaper disimpan
VIDEO_FOLDER="$HOME/backgrounds"

# Cari semua file video
videos=($(find "$VIDEO_FOLDER" -type f -iname "*.mp4"))

# Periksa apakah ada video yang ditemukan
if [[ ${#videos[@]} -eq 0 ]]; then
    echo "Tidak ada file .mp4 ditemukan di folder: $VIDEO_FOLDER"
    exit 1
fi

# Pilih video secara acak menggunakan $RANDOM
random_index=$((RANDOM % ${#videos[@]}))
VIDEO_FILE="${videos[$random_index]}"

# Hentikan proses jika diperlukan
if pgrep -x "swww-daemon" > /dev/null; then pkill -x "swww-daemon"; fi
#if pgrep -x "mpvpaper" > /dev/null; then pkill -x "mpvpaper"; fi
pkill -x mpvpaper

# Jalankan mpvpaper
nohup mpvpaper -o "no-audio --loop-playlist shuffle" eDP-1 "$VIDEO_FILE" &

