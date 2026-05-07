#!/bin/bash

socat -U - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do
    if echo "$line" | grep -q "^activewindow>>"; then
        hyprctl activewindow -j | jq -r '.title'
    fi
done