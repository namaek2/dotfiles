BAT_REP="battery_report.txt"

upower -i $(upower -e | grep BAT) >> "$HOME/$BAT_REP"

if [ $? -eq 0 ]; then
    notify-send "🔋 Battery report has been created : 
 $HOME/$BAT_REP"
else
    notify-send "Failed when creating battery report."
fi

