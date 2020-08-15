#! /bin/sh

PREFIX=$HOME/.config/rofi

rofi_command="rofi -config $PREFIX/power-config.rasi -theme $PREFIX/power.rasi"

# Options
shutdown=""
reboot="菱"
lock=""
suspend="鈴"
logout=""
cancel=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout\n$cancel"

chosen="$(echo "$options" | $rofi_command -p "Goodbye $(whoami)" -dmenu -selected-row 1)"

case $chosen in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        # unused for now
        ;;
    $suspend)
        # unused for now
        ;;
    $logout)
        for window_id in $(bspc query -W); do
            bspc window $window_id -c
        done

        bspc quit
        ;;
    $cancel)
        # do nothing
        ;;
esac
