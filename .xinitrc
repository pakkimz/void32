hsetroot -cover $HOME/.local/pictures/samarkand.png &
xrdb -I$HOME ~/.Xresources
picom &
dwmblocks &

xss-lock slock &
xautolock -time 15 -locker "sudo zzz" &

exec dwm
