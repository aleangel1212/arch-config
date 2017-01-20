#!/bin/bash

echo -e "\ndeleting current ~/.config"
sudo rm -r ~/.config

echo "deleting current ~/.zshrc"
sudo rm -r ~/.zshrc

echo -e "\ncreating symlink in home directory for .config"
ln -s /etc/arch-config/config/.config ~/.config

echo "creating symlink in home directory for .zshrc"
ln -s /etc/arch-config/config/.zshrc ~/.zshrc
