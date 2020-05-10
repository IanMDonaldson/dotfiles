#!/bin/sh
#taken from github.com/crian/dotfiles/dwm/blocks/battery
status="$(cat /sys/class/power_supply/AC/online)"
battery="$(cat /sys/class/power_supply/BAT0/capacity)"

case $status in
	1) i='^c#68ca59^'
	;;
	0) case ${battery%?} in
		[6-9]) i='^c#68ca59^ '
		;;
		[1-5]) i='^c#c5ca5b^ '
		;;
		*) i='^c#e13235^ '
		;;
	esac
	;;
esac
printf "%s %s" "$i ^d^$battery"

