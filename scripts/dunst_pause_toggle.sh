#!/bin/bash
if [[ $(dunstctl get-pause-level) == 100 ]]; then
    dunstctl set-paused false
    sleep 1
    dunstify "Notifications Resumed" -u low
else
    dunstify "Notifications Paused" -u low
    sleep 1
    dunstctl set-paused true
fi