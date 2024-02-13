#!/bin/bash

sudo pacman -Syu

sudo pacman -S neovim neofetch swaylock openrgb papirus-icon-theme pamixer pavucontrol hyprpaper nodejs docker hyprshot github-cli rust grim slurp alacritty ttf-rubik ttf-ms-fonts consolas-font ttf-times-new-roman ttf-font-awesome waybar paru wlogout vlc qbittorrent wofi dunst ripgrep  

paru -S spotify WebCord swww

git clone --bare https://github.com/Mario-Daoud/dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no
