#!/bin/bash
CACHE_DIR="/tmp/eww/"
CACHE_FILE="${CACHE_DIR}arch_updates_count"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

if [ ! -d "$CACHE_DIR" ]; then
    mkdir -p "$CACHE_DIR"
fi

if count=$(checkupdates 2>/dev/null | wc -l); then
    printf "%s\n" "$count" > "$CACHE_FILE"
else
    [ ! -f "$CACHE_FILE" ] && printf "0\n" > "$CACHE_FILE"
fi