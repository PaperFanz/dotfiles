#!/bin/sh

PREFIX=$HOME/.config

# swap compositor settings
cp $PREFIX/picom/picom_focus.conf $PREFIX/picom/picom.conf

# bspwm config
cp $PREFIX/bspwm/bspwmrc-focus $PREFIX/bspwm/bspwmrc
bspc wm -r && dunstify -r 500 "BSPWM" "Focus Mode"
