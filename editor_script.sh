#!/bin/sh

date=$(date)
file_location=$HOME/Pictures/screenshot+${date}_grim.png
title="Do you wish to edit your screenshot?"

slurp | grim -g - - | wl-copy && wl-paste > $file_location

output=$(printf "No\nYes" | wofi -d -p "${title}")

case $output in
	"Yes")
		gimp "${file_location}"
		;;
esac
