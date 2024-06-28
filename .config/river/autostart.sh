#!/bin/bash

# Authentication dialog

pkill -f /usr/libexec/polkit-gnome-authentication-agent-1
/usr/libexec/polkit-gnome-authentication-agent-1 &

# Start Pipewire
# pkill -f pipewire
# pipewire &

# Start Pipewire
# pkill -f pipewire-pulse
# pipewire-pulse &

# Start Kanshi which also starts Yambar
pkill -f kanshi
kanshi &

pkill -f swaybg
swaybg -i /home/dash/Downloads/ryo-yoshitake-rD28m9BmXVs-unsplash.jpg &

pkill -f dunst
dunst &

pkill -f yambar
bash /home/dash/.config/yambar/scripts/yambar-start.sh &

#pkill -f wlsunset
#wlsunset -l 57.4 -L -1.9 &

#export wallpaper='~/.cache/wallpaper'

#pkill -f swayidle
#swayidle -w \
#	timeout 300 'swaylock -f -i $wallpaper' \
#	timeout 600 'wlopm --off \*;swaylock -F -i ~/.cache/wallpaper' resume 'wlopm --on \*' \
#	before-sleep 'swaylock -f -i $wallpaper' &
