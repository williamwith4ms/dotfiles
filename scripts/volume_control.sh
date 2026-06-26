#!/bin/bash
if [ "$1" == "up" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
elif [ "$1" == "down" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
elif [ "$1" == "toggle" ]; then
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
fi

VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d", $2 * 100}')

MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -c '\[MUTED\]')

if [ "$MUTED" -gt 0 ]; then
    ICON="audio-volume-muted"
    LABEL="Muted"
else
    LABEL="${VOL}%"
    if [ "$VOL" -lt 34 ]; then
        ICON="audio-volume-low"
    elif [ "$VOL" -lt 67 ]; then
        ICON="audio-volume-medium"
    else
        ICON="audio-volume-high"
    fi
fi

dunstify \
    -h int:value:"$VOL" \
    -h string:x-dunst-stack-tag:volume \
    -i "$ICON" \
    -t 1500 \
    "Volume" "$LABEL"