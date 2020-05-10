#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -n "`/etc/X11/chooser.sh`" ]; then
 command="`/etc/X11/chooser.sh`"
else
 failsafe="yes"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

export _JAVA_AWT_WM_NONREPARENTING=1
#while true; do
#	/home/dragomundo/bin/dwmstatus.sh
#	#xsetroot -name "$( date +%a_%d__%H:%M_%p )"
#	sleep 1m
#done &

feh --bg-scale /home/dragomundo/.local/share/wallpapers/Aritim-Dark-Wallpaper-V2-3840x5376.jpg &
/home/dragomundo/bin/capctrlswap &
#exec_always --no-startup-id polybar -c ~/.config/polybar/config -q mybar &
#exec i3
/usr/local/bin/dwmblocks &
exec dwm
