#!/bin/sh

PREFIX=$HOME/.config

# swap compositor settings
cp $PREFIX/picom/picom_focus.conf $PREFIX/picom/picom.conf

# bspwm config
bspc config border_width        1
bspc config window_gap          8
bspc config border_radius       0
