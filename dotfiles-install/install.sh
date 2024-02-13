#!/bin/bash

sudo pacman -Syu

sudo pacman -S neovim neofetch nodejs docker github-cli rust grim slurp alacritty ttf-font-awesome waybar paru wlogout vlc qbittorrent wofi dunst ripgrep  

paru -S spotify WebCord 

git clone --bare https://github.com/Mario-Daoud/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no
