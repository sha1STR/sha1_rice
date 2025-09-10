#!/usr/bin/bash

set -x

is_running=$(pidof mpvpaper)

echo $is_running

if [[ $is_running ]]; then
  pkill mpvpaper
else
  mpvpaper -f -p -o "--loop-file=inf --vf=fps=24 --input-ipc-server=$XDG_CONFIG_HOME/mpv/wallpaper_socket" eDP-1 "/home/sha1/Videos/Animated Backgrounds/TopazHSR.mp4"
fi