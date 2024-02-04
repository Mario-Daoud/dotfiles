#!/bin/bash

hyprpm reload -n

waypaper --restore

waybar &

openrgb -p red

killall dunst; dunst &
