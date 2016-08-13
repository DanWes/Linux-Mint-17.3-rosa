#!/bin/sh

sudo apt-get install build-essential

sudo apt-get install git

# i3 window manager
# first add an additionally repository for the newest stable version of i3
# metapackage: i3, i3lock, i3status, suckless-tools (for dmenu), dunst
sudo -i
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt-get install i3
exit        # to leave the root shell
# i3blocks as an alternative to the i3status in the bar
# https://github.com/vivien/i3blocks
git clone git://github.com/vivien/i3blocks
cd i3blocks
make
sudo make install
# configuration file: ~/.i3blocks.conf
# execution in: ~/.i3/config

# Arc Theme for GTK 3, GTK 2 and Gnome-Shell
# https://github.com/horst3180/arc-theme
# http://software.opensuse.org/download.html?project=home%3AHorst3180&package=arc-theme
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme

# ranger - a console file manager
# http://ranger.nongnu.org/
sudo apt-get install ranger
