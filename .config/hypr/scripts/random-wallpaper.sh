#!/bin/bash

DIR=~/Images/Wallpapers/
PICS=($(ls ${DIR}))

RANDOMPIC=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

swww query || swww init

#change-wallpaper using swww
swww img ${DIR}/${RANDOMPIC} --transition-fps 30 --transition-type any
