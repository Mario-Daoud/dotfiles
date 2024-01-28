#!/bin/bash

waypaper --restore

waybar &

openrgb -p red

killall dunst; dunst &
