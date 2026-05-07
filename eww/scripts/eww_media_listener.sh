#!/bin/bash

playerctl metadata --follow --format "{{ status }}: {{ artist }} - {{ title }}" 2>/dev/null | while read -r line; do
    # Check if the player is actually playing or paused
    if [[ $line == Playing* ]] || [[ $line == Paused* ]]; then
        # Strip the status prefix and echo the artist - title
        echo "${line#*: }"
    else
        echo ""
    fi
done