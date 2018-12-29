echo "  Battery: `cat /sys/class/power_supply/BAT0/capacity`%"
echo "Backlight: `xbacklight -get | sed 's/^\([0-9]*\)\.[0-9]*/\1/'`%"
echo "Freespace: `free -m | grep "^Mem" | awk '{printf("%i %iG/%iG", 100*$4/$2, $4, $2)}'`"
echo "   Memory: `df -TPh / | tail -n1 | awk '{printf("%i %s/%s", $6, $4, $3)}'`"