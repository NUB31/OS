#!/bin/sh

# Run updates
sudo apt update
sudo apt upgrade

# Install packages and dependencies
sudo apt-get install -y awesome terminator build-essential libpam0g-dev libxcb-xkb-dev zsh xorg compton nitrogen

# Download ly display manager
git clone https://github.com/fairyglade/ly --recurse-submodules

# Compily ly
cd ly
make
make install installsystemd

# Enable ly
systemctl enable ly.service

cd ../
sudo rm -r ly

# Create startup config
touch .xinitrc
echo "exec awesome" > .xinitrc

touch .zprofile
echo "startx" > .zprofile

# Apply awesome config
mkdir .config
mkdir .config/awesome

touch .config/awesome/rc.lua
cat os/rc.lua > .config/awesome/rc.lua

sudo chsh -s /etc/zsh

# Reboot into ly
reboot
