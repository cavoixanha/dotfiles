#!/bin/bash
PATH_BACKUP="$HOME/Desktop/dotfiles"
PATH_DES="$HOME"
# PATH_DES="~"
echo $PATH_BACKUP
echo "Copy nVim"
# cp -r $PATH_BACKUP/.config/nvim/configs/* /home/nam/.config/nvim/configs
mv $HOME/.config/nvim/configs $HOME/.config/nvim/configs-backup
mv $HOME/.config/nvim/init.vim $HOME/.config/nvim/init-backup.vim
cp -r $PATH_BACKUP/.config/nvim/* $HOME/.config/nvim
echo "=====100%====="
echo "Copy tmux"
mv $PATH_DES/.tmux.conf $PATH_DES/.tmux-backup.conf
cp $PATH_BACKUP/.tmux.conf $PATH_DES/.tmux.conf
echo "=====100%====="
echo "Copy zsh"
mv $PATH_DES/.zshrc $PATH_DES/.zshrc-backup
cp $PATH_BACKUP/.zshrc $PATH_DES/.zshrc
echo "=====100%====="
