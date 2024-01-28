#!/bin/bash

degrees=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=50.828&longitude=3.2649&current=temperature_2m" | jq -r '.current.temperature_2m')
degreeUnit=$(curl -s "https://api.open-meteo.com/v1/forecast?latitude=50.828&longitude=3.2649&current=temperature_2m" | jq -r '.current_units.temperature_2m')

weather="${degrees}${degreeUnit}"

echo "$weather"
