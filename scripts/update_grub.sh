#!/bin/bash

echo "Updating GRUB..."
sudo pacman -S update-grub --noconfirm
#yay -S update-grub --noconfirm
sudo update-grub
echo "GRUB update completed."
