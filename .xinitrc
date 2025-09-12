hsetroot -cover $HOME/.local/pictures/samarkand.png &
xrdb -I$HOME ~/.Xresources
picom &
dwmblocks &

exec dwm
