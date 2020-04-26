#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable color
alias ls='ls --color=auto'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias dmesg='dmesg --color=auto'

powerline-daemon -q
XDG_CONFIG_HOME=~/.config/
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh

NPM_PACKAGES=~/.npm-packages
PATH="$NPM_PACKAGES/bin:$PATH"

# shorten directory paths in prompts
PROMPT_DIRTRIM=3

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

## SMARTER TAB-COMPLETION (Readline bindings) ##

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"

# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

## HISTORY

# All sessions should append history
shopt -s histappend

# Enlarge history
HISTSIZE=100000
HISTFILESIZE=1000000

# Ignore duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Ignore boring commnands
export HISTIGNORE="&:[ ]*:exit:ls:history:clear"

