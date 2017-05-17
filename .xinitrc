#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
xrandr --output Virtual1 --mode 1280x800 --rate 60
xset +fp /usr/share/fonts/local
xset fp rehash
if [ -d /etc/X11/xinit/xinitrc.d ]; then
for f in /etc/X11/xinit/xinitrc.d/*; do
[ -x "$f" ] && . "$f"
done
unset f
fi
export GTK2_RC_FILES="/etc/gtk-2.0/gtkrc:$HOME/.gtkrc-2.0"
# [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xrdb -merge $HOME/.Xresources &
xbindkeys
exec compton -c -C -t2 -l2 -r1 -o.25 &
feh --bg-scale ~/Pictures/tranquility.png &
exec i3 
