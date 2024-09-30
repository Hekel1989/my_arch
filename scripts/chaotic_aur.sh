#!/bin/bash

echo "Installing Chaotic AUR..."
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm

echo "Appending Chaotic AUR to /etc/pacman.conf..."
sudo tee -a /etc/pacman.conf > /dev/null << EOL

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOL

echo "Chaotic AUR installation completed."
