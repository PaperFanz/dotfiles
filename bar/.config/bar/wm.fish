#!/usr/bin/fish

source $HOME/.config/bar/config.fish

set ws_gap 8

set ws_clrs $t_yellow $t_blue $b_red $t_green $t_magenta

# get workspace numbers from bspc
set ws_nums (bspc query -D)

# get workspace names from bspc
set ws_names (bspc query -D --names)

# configure icons for workspaces
set ws_icons     

# get current workspace on startup
set ws_cur (bspc query -D -d)

while true

    set ws_string "W"

    for ws in (seq 5)

        set clr $ws_clrs[$ws]

        set ws_string $ws_string"%{A:bspc desktop -f ^$ws:}%{F#$clr}%{U#$clr}"

        if test $ws_nums[$ws] = $ws_cur
            set ws_string $ws_string"%{R}%{O$ws_gap}"$ws_icons[$ws]" "$ws_names[$ws]"%{O$ws_gap}%{R}"
        else
            set ws_string $ws_string"%{+o}%{O$ws_gap}"$ws_icons[$ws]"%{O$ws_gap}%{-o}"
        end

        set ws_string $ws_string"%{A}"

    end

    echo $ws_string

    # listen to desktop focus events
    set ev (string split ' ' (bspc subscribe desktop_focus -c 1))

    set ws_cur $ev[3]

end
