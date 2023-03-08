#!/bin/sh
sudo apt update
sudo apt upgrade

sudo apt-get install -y awesome terminator build-essential libpam0g-dev libxcb-xkb-dev zsh xorg

git clone https://github.com/fairyglade/ly --recurse-submodules

cd ly
make
make install installsystemd

systemctl enable ly.service

cd ../

touch .xinitrc
echo "exec awesome" > .xinitrc

touch .zprofile
echo "startx" > .zprofile

mkdir .config
mkdir .config/awesome

touch .config/awesome/rc.lua
cat os/rc.lua > .config/awesome/rc.lua

chsh -s /etc/zsh

reboot
