#!/run/current-system/sw/bin/bash

lock=" Lock"
reboot=" Reboot"
shutdown="⏻ Shutdown"

options="$lock\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | rofi -dmenu -i -theme ~/.config/rofi/power.rasi)"

case $chosen in
    $lock)
        sleep 0.2
        hyprctl dispatch exec "pidof hyprlock || hyprlock"
        ;;
    $reboot)
        systemctl reboot
        ;;
    $shutdown)
        systemctl poweroff
        ;;
esac
