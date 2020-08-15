#!/usr/bin/fish

source $HOME/.config/bar/config.fish

#
# status modules
#

# wifi 
set wifi_icon "直"

function network
    set wifi_essid (iwgetid -r)

    if test -z $wifi_essid
        set wifi_icon "睊"
        set $wifi_essid "Disonnected"
    else
        # get wifi link quality from iwconfig, number from 0 to 70
        set wifi_link_quality (string match -r '[0-9]{2}' (iwconfig wlp5s0 | grep Quality))
    end

    echo "%{O8}$wifi_icon%{O8}$wifi_essid%{O8}"
end

# cpu/disk/mem stats
set cpu_icon 龍

function cpu
    set cpus (top -bn2 | grep "Cpu(s)" | \
        sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
            awk '{print 100 - $1}')

    set usage $cpus[2]

    echo "%{O8}$cpu_icon $usage%%{O8}"
end

set dsk_icon 

function disk
    set usage (df -a | grep /dev/nvme0n1p5 | awk '{print $5}')

    echo "%{O8}$dsk_icon $usage%{O8}"
end

set mem_icon 

function mem

    set usage (free | grep Mem | awk '{print $3/$2 * 100}' | cut -c -5)

    echo "%{O8}$mem_icon $usage%%{O8}"

end

set modules network cpu disk mem

set mod_clrs $t_blue $b_magenta $b_yellow $b_green

while true

    set stat_str "S%{+o}"

    for mod in (seq (count $modules))

        set clr $mod_clrs[$mod]
        set stat_str $stat_str"%{F#$clr}%{U#$clr}"(eval $modules[$mod])"%{F-}%{U-}"

    end

    set stat_str $stat_str"%{-o}"

    echo $stat_str

    sleep 10s

end
