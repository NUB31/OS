#!/bin/sh
USER_HOME=$(eval echo ~${SUDO_USER})
cd ${USER_HOME}

sudo apt update
sudo apt upgrade

sudo apt-get install -y awesome neofetch konsole firefox zsh dolphin nitrogen compton breeze-icon-theme lxinput neovim terminator xorg

chsh -s /bin/zsh

touch .xinitrc
echo "exec awesome" > .xinitrc

touch .zprofile
echo "startx" > .zprofile

mkdir  .config/awsome

touch rc.lua
cat /etc/xdg/awesome/rc.lua > rc.lua
