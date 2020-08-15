#!/usr/bin/fish

source $HOME/.config/bar/config.fish

#
# date and time module
#

set default_color "%{B-}%{F-}"
set clock_color "%{F#$b_yellow}%{B#$background}"
set clock_icons "" "" "" "" "" "" "" "" "" "" "" ""

set cal_color "%{F#$foreground}%{B#$background}"
set cal_icon ""

while true

    set h (date '+%0I')
    set clock_icon $clock_icons[$h]

    set m (date '+%M%P')
    set clock "$clock_color%{R}%{O8}$clock_icon $h:$m%{O16}$default_color"

    set d (date '+%a, %b %-d')
    set calendar "$cal_color%{O8}$cal_icon $d%{O8}$default_color"

    echo "C$calendar$clock"

    sleep 1s

end
