#!/bin/bash

DOTFILES=$HOME/dotfiles

function link_file(){
  LINK="$HOME/$1"
  TARGET="$DOTFILES/$1"
  if [ -f $LINK ]; then
    echo "Replace file '$1'?"
    read -p "[y/N]?: " Q_REPLACE_FILE
    if [[ $Q_REPLACE_FILE == 'y' ]]; then
      ln -sf $TARGET $LINK
      ls -la $LINK
    fi
  elif [ -d $LINK ]; then
    echo "Replace directory '$1'?"
    read -p "[y/N]: " Q_REPLACE_DIR
    if [[ $Q_REPLACE_DIR == 'y' ]]; then
      rm -rf $LINK
      ln -sf $TARGET $LINK
      ls -la $LINK
    fi
  else
    ln -s $TARGET $LINK
    ls -la $LINK
  fi
}

link_file .bashrc
link_file .bash_profile
link_file .Xresources
link_file .config/i3
link_file .config/nvim
