#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

[[ -f ~/.extend.xsession ]] && . ~/.extend.xsession


# Make sure all the fonts are recognized
xset +fp $HOME/.local/share/fonts/adobe-source-code-pro
xset +fp $HOME/.local/share/fonts/awesome-terminal-fonts
xset +fp $HOME/.local/share/fonts/OTF
xset +fp $HOME/.local/share/fonts/TTF
xset +fp $HOME/.local/share/fonts/cantarell
fc-cache -v

# Turn off warning bell
xset b off

# Configure monitors
bash $HOME/.scripts/setmonitor

# set menu key as compose key
# setxkbmap -option compose:menu,ctrl:nocaps
