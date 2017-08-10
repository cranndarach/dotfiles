#!/usr/bin/env python3

from powerline.lib.shell import run_cmd


def brightness(pl):
    '''Return the monitor's brightness according to xbacklight.'''
    brightness = round(float(run_cmd(pl, ["xbacklight", "-get"])), 0)
    return "{}%".format(str(brightness))
