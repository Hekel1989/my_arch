#!/bin/bash

echo "Setting up CachyOS repos..."
curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz
cd cachyos-repo
sudo ./cachyos-repo.sh
cd ..
rm -rf cachyos-repo cachyos-repo.tar.xz
echo "CachyOS repos setup completed."


curl https://mirror.cachyos.org/cachyos-repo.tar.xz -o cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
sudo ./cachyos-repo.sh