#!/bin/bash
sleep 5 # wait for network (stops stating 0 for first hour on startup)

echo "$(checkupdates | wc -l)"