#!/bin/bash
PATH_BACKUP="/home/nam/Desktop/Cty/dotfiles"
PATH_DES="/home/nam"
# PATH_DES="~"
echo $PATH_BACKUP
echo "Copy nVim"
# cp -r $PATH_BACKUP/.config/nvim/configs/* /home/nam/.config/nvim/configs
cp -r $PATH_BACKUP/.config/nvim/* /home/nam/.config/nvim
echo "=====100%====="
echo "Copy tmux"
cp $PATH_BACKUP/.tmux.conf $PATH_DES/.tmux.conf
echo "=====100%====="
echo "Copy zsh"
cp $PATH_BACKUP/.zshrc $PATH_DES/.zshrc
echo "=====100%====="
