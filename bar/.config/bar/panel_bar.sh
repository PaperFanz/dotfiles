#! /bin/sh

PREFIX=$HOME/.config/bar

. $PREFIX/panel_config

# static menu button
menu="%{A:sh $PREFIX/menu.sh:}%{F#d7af70}%{R}%{O16}%{O16}%{R}%{F-}%{A}"

while read -r line ; do
	case $line in
		S*)
			# stats output
			stat="${line#?}"
			;;
		C*)
			# clock output
			clk="${line#?}"
			;;
		T*)
			# xtitle output
			title="${line#?}"
			len=${#title}
			# trim to 30 chars
			if [ $len -gt 30 ];
			then
				title=$(echo $title | cut -c -30)"|"
			fi
			title="%{O8} $title%{O8}"
			;;
		W*)
			# bspwm's state
			wm=${line#?}
	esac
	printf "%s\n" "%{l}${menu}${stat}${title}%{c}${wm}%{r}${clk}"
done