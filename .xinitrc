hsetroot -cover $HOME/.local/pictures/samarkand.png &
picom &
xrdb -I$HOME ~/.Xresources

while true; do
	xsetroot -name "$(date +"%F %R")"
	sleep 1m
done &

exec dwm
