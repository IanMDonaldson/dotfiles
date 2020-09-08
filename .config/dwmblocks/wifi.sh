#!/bin/sh

wifistatus="$(cat /sys/class/net/wlp58s0/operstate)"
wifissid="$(nmcli -t -f NAME connection show --active)"
wifiperc="$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) "%" }')"
if [ $wifistatus == "up" ]; then
    netstatus="^c#b16282^ ^d^$wifiperc "
else
    netstatus="^c#b16286^⨂ ^d^Disco "
fi
printf "%s " "$netstatus"
