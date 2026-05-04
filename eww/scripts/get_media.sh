#!/bin/bash

# Get the artist and title from the active player
status=$(playerctl status 2>/dev/null)

if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
    playerctl metadata --format "{{ artist }} - {{ title }}"
else
    echo ""
fi