#!/bin/bash

sudo mkdir -p /etc/arch_config
cd ../../config

echo -e "\ncopying .config to /ect/arch_config"
sudo cp -r .config /etc/arch_config

echo "copying .zshrc to /etc/arch_config"
sudo cp -r .zshrc /etc/arch_config

echo "copying wallpaper to /etc/arch_config"
sudo cp -f wallpaper.* /etc/arch_config

echo -e "\ndeleting current ~/.config"
sudo rm -r ~/.config

echo "deleting current ~/.zshrc"
sudo rm -r ~/.zshrc

echo -e "\ncreating symlink in home directory for .config"
ln -s /etc/arch_config/.config ~/.config

echo "creating symlink in home directory for .zshrc"
ln -s /etc/arch_config/.zshrc ~/.zshrc