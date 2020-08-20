#!/bin/bash
PATH_BACKUP="$HOME/Desktop/dotfiles"
echo $PATH_BACKUP
echo "Copy nVim"
cp -r ~/.config/nvim/configs/* $HOME/Desktop/dotfiles/.config/nvim/configs
echo "=====100%====="
echo "Copy tmux"
cp ~/.tmux.conf $PATH_BACKUP
echo "=====100%====="
echo "Copy zsh"
cp ~/.zshrc $PATH_BACKUP
echo "=====100%====="
echo "Copy nVim for macOS"
cp ~/.vimrc.* $PATH_BACKUP
echo "=====100%====="
