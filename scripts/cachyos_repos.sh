#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

echo "Setting up CachyOS repos..."

curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz
cd cachyos-repo

# Run the script with automatic "yes" to all prompts
yes y | sudo ./cachyos-repo.sh

cd ..
rm -rf cachyos-repo cachyos-repo.tar.xz

echo "CachyOS repos setup completed."
