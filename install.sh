#!/bin/sh

# 1. Packages
sudo pacman -S --noconfirm --needed zsh yay hyprland nwg-displays kitty dolphin librewolf awww qt6ct-kde qt6ct-kde kvantum gsettings-desktop-schemas ttf-jetbrains-mono-nerd papirus-icon-theme papirus-folders
yay -S --noconfirm --needed waybar-cava waybar-module-pacman-updates-git catppuccin-gtk-theme-mocha kvantum-theme-catppuccin-git

# 2. Config
cp -rT ./.config ~/.config
mkdir -p ~/.zsh
cp -rT ./.zsh ~/.zsh
cp -f ./.zshrc ~/.zshrc

# 3. Themeing
awww-daemon
gsettings set org.gnome.desktop.interface gtk-theme "catppuccin-mocha-lavender-standard+default"
kvantummanager --set catppuccin-mocha-lavender
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus
papirus-folders -C cat-mocha-lavender --theme Papirus
cd ..
gsettings set org.gnome.desktop.interface icon-theme "Papirus"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
awww img ~/.config/hypr/themes/wall.jpg


# 4. Reload
hyprctl dispatch 'hl.dsp.exit()'
