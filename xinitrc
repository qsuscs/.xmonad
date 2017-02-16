[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xrandr --dpi 192
export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
xscreensaver -no-splash &
[ -f ~/.fehbg ] && ~/.fehbg
exec xmonad
