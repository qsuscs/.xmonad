[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xrandr --dpi 192
export GDK_SCALE=2
compton --backend=glx --glx-swap-method=buffer-age -b
#export GDK_DPI_SCALE=0.5
eval `dbus-launch --auto-syntax`
xscreensaver -no-splash &
[ -f ~/.fehbg ] && ~/.fehbg
taffybar &
nm-applet &
blueman-applet &
exec xmonad
