#!/bin/bash
battery_path="/sys/class/power_supply/BAT1"
battery_capacity_path="$battery_path/capacity"
battery_status="$battery_path/status"
ChargingIcons=("󰂄" "󰂋" "󰂊 " "󰢞 " "󰂉" "󰢝 " "󰂈 " "󰂇 " "󰂆 " "󰢜 ")
DischargingIcons=("󰁹" "󰂂" "󰂁" "󰂀" "󰁿" "󰁾" "󰁽" "󰁼" "󰁻" "󰂃")


emit_battery() {
	battery_level=$(awk '{printf "%.0f\n", $1}' "$battery_capacity_path")
	
	idx=$(( 10 - battery_level / 10 ))
    (( idx > 9 )) && idx=9
    (( idx < 0 )) && idx=0

	if cat "$battery_status" | grep -q "Charging"; then
		icon=${ChargingIcons[$idx]}
	else
		icon=${DischargingIcons[$idx]}
	fi
	echo "$icon$battery_level%"

}

if [[ ! -d "$battery_path" ]]; then
    echo ""
    exit 0
fi

emit_battery

dbus-monitor --system "type='signal',interface='org.freedesktop.DBus.Properties',path='/org/freedesktop/UPower/devices/battery_BAT1'" 2>/dev/null | while read -r line; do
    if [[ "$line" == *"member=PropertiesChanged"* ]]; then
        emit_battery
    fi
done