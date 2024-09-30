#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

echo "Setting up CachyOS repos..."

# Install necessary tools
sudo pacman -S --noconfirm expect

curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz
cd cachyos-repo

# Use expect to automate the response
expect << EOF
spawn sudo ./cachyos-repo.sh
expect {
    "proceed with installation? \\\[y/n\\\]" {
        send "y\r"
        exp_continue
    }
    eof
}
EOF

cd ..
rm -rf cachyos-repo cachyos-repo.tar.xz

echo "CachyOS repos setup completed."
