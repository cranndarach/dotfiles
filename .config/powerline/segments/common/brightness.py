#!/usr/bin/env python3

from powerline.lib.shell import run_cmd


def brightness(pl):
    '''Return the monitor's brightness according to xbacklight.'''
    # It doesn't want to go right from float to int.
    brightness = int(round(float(run_cmd(pl, ["xbacklight", "-get"])), 0))
    return "{}%".format(str(brightness))
