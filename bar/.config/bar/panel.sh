#! /bin/sh

# toggles the status bar

PREFIX=$HOME/.config/bar

. $PREFIX/panel_config

if xdo id -a "$PANEL_WM_NAME" > /dev/null ; then
	pkill lemonbar
fi

# trap 'trap - TERM; kill 0' INT TERM QUIT EXIT

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

xtitle -sf 'T%s\n' > "$PANEL_FIFO" &
fish $PREFIX/stats.fish > "$PANEL_FIFO" &
fish $PREFIX/datetime.fish > "$PANEL_FIFO" &
fish $PREFIX/wm.fish > "$PANEL_FIFO" &

PANEL_WIDTH=$((2560 - $PANEL_GAP - $PANEL_GAP))

BSPWM_TOP_GAP=$(($PANEL_GAP + $PANEL_HEIGHT))

$PREFIX/panel_bar.sh < "$PANEL_FIFO" | \
    lemonbar -a 32 -u 2 -n "$PANEL_WM_NAME" \
    -g $PANEL_WIDTH'x'$PANEL_HEIGHT'+'$PANEL_GAP'+'$PANEL_GAP \
    -f "$PANEL_FONT:size=$PANEL_FONT_SIZE" \
    -F "$COLOR_DEFAULT_FG" -B "$COLOR_DEFAULT_BG" | \
        sh &

bspc config top_padding $BSPWM_TOP_GAP

wid=$(xdo id -a "$PANEL_WM_NAME")
xdo below -t "$(xdo id -N Bspwm -n root | sort | head -n 1)" "$wid"
