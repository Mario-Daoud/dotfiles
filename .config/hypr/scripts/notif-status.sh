#!/bin/bash

isPaused=$(dunstctl is-paused)
notifAm=$(dunstctl count waiting)

if [ "$notifAm" -eq 0 ]; then
  notifText=""
else
  notifText=" $notifAm"
fi

if [ "$isPaused" == "true" ]; then
  echo "{\"text\": \"🔕$notifText\", \"class\": \"dunst-not-paused\", \"alt\": \"Dunst is not paused. Click to toggle.\"}"
else
  echo "{\"text\": \"🔔$notifText\", \"class\": \"dunst-paused\", \"alt\": \"Dunst is paused. Click to toggle.\"}"
fi
