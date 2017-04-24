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
    echo "Please specify a monitor."
    ;;
esac

feh --bg-scale ~/Pictures/Wallpaper/space-nebula-wallpaper-6.jpg
