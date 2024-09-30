#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

echo "Installing CachyOS Pacman..."

# Install yay
sudo pacman -S --noconfirm yay

# Install pacman using yay, selecting option 2
echo "2" | yay -S pacman

echo "CachyOS Pacman installation completed."
