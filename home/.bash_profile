#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  XKB_DEFAULT_LAYOUT=us exec sway
fi

export GDK_SCALE=2
export VISUAL=nvim
export EDITOR="$VISUAL"
