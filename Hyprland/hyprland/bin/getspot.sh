#!/bin/bash

if pidof -q spotify 
then
	artist=`python ~/hyprland/bin/getspot.py  | awk ' /^xesam:artist/ { print } ' | sed "s/xesam:artist dbus.Array..dbus.String..\(.*\).... signature=dbus.Signature..s.., variant_level=1./\1/g"`
	track=`python ~/hyprland/bin/getspot.py | tail -1` 
	echo "Playing: $artist - $track" | sed "s/&/ and /g"
else
	echo Hyprland
fi
