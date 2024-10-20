#!/bin/bash
## Files

iDIR="$HOME/.config/dunst/icons"

notification(){
  notify-send -h string:x-canonical-private-synchronous:sys-notify -u normal -i "$iDIR/music.png" "Playing now: " "$@" 
}


main() {
#choice=$(menu | rofi -dmenu -config ~/.config/rofi/config-rofi-Beats.rasi | cut -d. -f1)

notification "Lofi Girl ☕️🎶";
mpv "https://play.streamafrica.net/lofiradio"

return
;;

esac
}

pkill -f http && notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$iDIR/music.png" "Online Music stopped" || main
