#!/bin/bash

# Check if caps:swapescape is currently active
CURRENT=$(setxkbmap -query | grep -c "caps:escape_shifted_capslock")
if [ "$CURRENT" -eq 1 ]; then
	# if active, reset to default
	setxkbmap -option
	notify-send "Caps Lock and Esc reset to default"
else
	#if not active, swap Caps Lock and Esc
	setxkbmap -option "caps:escape_shifted_capslock"
	notify-send "Caps Lock and Esc swapped"
fi
