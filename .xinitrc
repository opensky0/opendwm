picom -f &

nitrogen --restore &

exec dwm &

while true; do
	xsetroot -name " $(pactl list sinks | grep "Volume" | awk 'NR==1 { print $5}')  $(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')  $(date "+%T %e.%m.%Y")"
	sleep 1
done
