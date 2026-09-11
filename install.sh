#!/bin/sh
sudo pacman -S --noconfirm --needed zsh yay hyprland nwg-displays kitty dolphin librewolf awww qt6ct-kde qt6ct-kde kvantum ttf-jetbrains-mono-nerd papirus-icon-theme papirus-folders
yay -S --noconfirm --needed waybar-cava waybar-module-pacman-updates-git catppuccin-gtk-theme-mocha kvantum-theme-catppuccin-git
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
kvantummanager --set catppuccin-mocha-lavender
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
papirus-folders -C cat-mocha-lavender --theme Papirus-Dark
cd
rm -r papirus-folders
awww img ~/.config/hypr/themes/wall.jpg
chsh -s $(which zsh)
echo $SHELL