#!/bin/bash



get_vol() {
    local status=$(wpctl get-volume @DEFAULT_SINK@)

    if [[ $status == *"[MUTED]"* ]]; then
        echo "󰖁  MUTED"
    else
        local vol_num=$(awk '{print int($2 * 100)}' <<< "$status")
        if (($vol_num == 0)) ; then
            echo "󰝟  $vol_num%"
        elif (( $vol_num < 25 )); then
            echo "󰕿  $vol_num%"
        elif (( $vol_num < 60 )); then
            echo "󰖀  $vol_num%"
        else
            echo "󰕾  $vol_num%"
        fi
    fi
}

# Initial call for eww startup
get_vol

# Listen for volume/sink changes
pactl subscribe | stdbuf -oL grep --line-buffered "sink" | while read -r _; do
    get_vol
done