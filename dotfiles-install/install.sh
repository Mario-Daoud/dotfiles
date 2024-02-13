#!/bin/bash

sudo pacman -S neovim neofetch nodejs docker rust alacritty ttf-font-awesome waybar wlogout wofi dunst ripgrep  

git clone --bare https://github.com/Mario-Daoud/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no
