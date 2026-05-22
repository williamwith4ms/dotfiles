#!/bin/bash
CACHE_DIR="/tmp/eww/"
CACHE_FILE="${CACHE_DIR}arch_updates_count"

if [ ! -f "$CACHE_FILE" ]; then
    echo "0" > "$CACHE_FILE"
fi

read -r contents < "$CACHE_FILE"
echo "$contents"

inotifywait -q -m -e close_write --format "%f" "$CACHE_DIR" | while read -r filename; do
    if [ "$filename" = "arch_updates_count" ]; then
        read -r contents < "$CACHE_FILE"
        echo "$contents"
    fi
done