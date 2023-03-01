killall -q picom

sleep 0.001
picom -b --vsync --backend glx --refresh-rate 60
