[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xrandr --dpi 192
export GDK_SCALE=2
compton --backend=glx --glx-swap-method=buffer-age -b
#export GDK_DPI_SCALE=0.5
eval `dbus-launch --auto-syntax`
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets)
xscreensaver -no-splash &
[ -f ~/.fehbg ] && ~/.fehbg
taffybar &
nm-applet &
blueman-applet &
setxkbmap de bone || setxkbmap de
exec xmonad
