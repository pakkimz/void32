hsetroot -cover $HOME/.local/pictures/samarkand.png &
xrdb -I$HOME ~/.Xresources
picom &
dwmblocks &

# add (ALL ALL=NOPASSWD: /usr/bin/zzz) - in /etc/sudoers
xautolock -time 15 -locker "sudo zzz" &
exec dwm
