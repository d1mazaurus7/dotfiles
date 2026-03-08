#!/bin/bash

echo "downloading..."
sudo pacman -Syu --needed hyprland waybar kitty fastfetch git
mkdir -p ~/.config
echo "checking files..."
cp -r config/hypr ~/.config/
cp -r config/waybar ~/.config/
cp -r config/kitty ~/.config/
cp -r config/fastfetch ~/.config/
echo "everything is ready!"
echo "try to restart  Hyprland."
