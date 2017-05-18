#!/bin/sh

case $1 in
  big)
    xrandr --output VGA1 --mode 1920x1080
    xrandr --output VGA1 --above LVDS1
    ;;
  home)
    xrandr --output VGA1 --mode 1440x900
    xrandr --output VGA1 --left-of LVDS1
    ;;
  *)
    echo "No external monitor specified."
    xrandr --auto
    ;;
esac

feh --bg-scale ~/Pictures/Wallpaper/star-space-wallpaper-5.jpg
