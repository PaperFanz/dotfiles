#!/bin/sh

PREFIX=$HOME/.config

# swap compositor settings
cp $PREFIX/picom/picom_pretty.conf $PREFIX/picom/picom.conf

# bspwm settings
bspc config border_width        2
bspc config window_gap          8
bspc config border_radius       21
