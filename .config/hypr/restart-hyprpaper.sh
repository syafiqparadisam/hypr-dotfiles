#!/bin/bash

pkill hyprpaper

nohup hyprpaper > $HOME/nohup.out 2>&1 &

