#!/bin/sh
mkdir .config/awesome
touch .config/awesome/rc.lua
cat OS/rc.lua > .config/awesome/rc.lua

sudo apt update
sudo apt upgrade

sudo apt-get install awesome neofetch konsole firefox zsh dolphin nitrogen compton breeze-icon-theme lxinput neovim terminator xorg LightDM

chsh -s /bin/zsh

touch .xinitrc
echo "exec awesome" > .xinitrc

touch .zprofile
echo "startx" > .zprofile

mkdir  .config/awsome

touch rc.lua
cat /etc/xdg/awesome/rc.lua > rc.lua
