setxkbmap -option ctrl:nocaps
setxkbmap -option altwin:swap_alt_win

xrdb -merge ~/.Xresources
exec i3
