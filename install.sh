#!/bin/bash

echo "downloading..."
sudo pacman -Syu
sudo pacman -S hyprland \
waybar kitty fastfetch git cava grim slurp swappy \ 
wl-clipboard zsh zsh-completions firefox chromium telegram-desktop

echo "Installing AUR helper (yay)..."
sudo pacman -S --needed --noconfirm base-devel git
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd ..
    rm -rf yay-bin
    echo "yay installed!"
else
    echo "yay is already installed."
fi

yay -S --noconfirm spotify
yay -S --noconfirm proton-vpn-gtk-app

mkdir -p ~/Pictures/Screenshots 
mkdir -p ~/.config
echo "checking files..."
cp -r config/hypr ~/.config/
cp -r config/waybar ~/.config/
cp -r config/kitty ~/.config/
cp -r config/fastfetch ~/.config/
cp .zshrc ~/
chsh -s $(which zsh)
echo "Everything is ready!"
echo "Restart Hyprland: reboot."
