#!/bin/bash

get_vol() {
    local status=$(wpctl get-volume @DEFAULT_SINK@)

    if [[ $status == *"[MUTED]"* ]]; then
        echo "MUTED"
    else
        echo "$status" | awk '{print int($2 * 100) "%"}'
    fi
}

# Initial call for eww startup
get_vol

# Listen for volume/sink changes
pactl subscribe | stdbuf -oL grep --line-buffered "sink" | while read -r _; do
    get_vol
done