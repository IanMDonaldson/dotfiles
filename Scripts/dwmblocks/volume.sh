#!/bin/sh

mute="$(pulsemixer --get-mute)"
vol="$(pulsemixer --get-volume | awk '{print $1}')"
if [[ $mute == 1 ]]; then
    printf "^c#8ec07c^ ^d^Muted"
elif [[ $mute == 0 ]]; then
    case ${vol%?} in
           10) i='^c#ff3336^ ' ;;
        [6-9]) i='^c#fff25d^ ' ;;
        [3-5]) i='^c#689d6a^ ' ;;
            *) i='^c#689d6a^婢 '
    esac
    printf "%s " "$i ^d^$vol "
fi
