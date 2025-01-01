#!/bin/sh

if pgrep -x "mpvpaper" > /dev/null; then
pkill -x mpvpaper
fi
waypaper --random
