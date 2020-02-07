#!/bin/bash
PATH_BACKUP="/home/nam/Desktop/Cty/dotfiles"
echo $PATH_BACKUP
echo "Copy nVim"
cp -r ~/.config/nvim/configs/* /home/nam/Desktop/Cty/dotfiles/.config/nvim/configs
echo "=====100%====="
echo "Copy tmux"
cp ~/.tmux.conf $PATH_BACKUP
echo "=====100%====="
echo "Copy zsh"
cp ~/.zshrc $PATH_BACKUP
echo "=====100%====="