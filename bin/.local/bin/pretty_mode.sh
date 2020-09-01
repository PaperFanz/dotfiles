#!/bin/sh

PREFIX=$HOME/.config

# swap compositor settings
cp $PREFIX/picom/picom_pretty.conf $PREFIX/picom/picom.conf

# bspwm settings
cp $PREFIX/bspwm/bspwmrc-pretty $PREFIX/bspwm/bspwmrc
bspc wm -r && dunstify -r 500 "BSPWM" "Pretty Mode"
