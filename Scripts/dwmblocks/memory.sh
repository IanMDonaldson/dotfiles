#!/bin/sh

$memory="(free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g)"
$icon=""
printf "%s " "^c#64fcda^$icon ^d^$memory "

