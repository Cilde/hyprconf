#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

pacman -S hyprland waybar hyprpaper kitty

rm -rf ~/.config/hypr && rm -rf etc/xdg/waybar && rm -rf ~/.config/kitty 

mkdir ~/.config/hypr && mkdir etc/xdg/waybar && mkdir ~/.config/kitty

git clone https://github.com/cilde/hyprconf.git && cd hyprconf

echo "Do you wish to use Nvidia settings?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) yay nvidia-dkms && cp hyprland.conf ~/.config/hypr/ && cp hyprpaper.conf ~/.config/hypr/ && cp hyprland ~/.config/hypr/ && cp config /etc/xdg/waybar && cp style.css /etc/xdg/waybar && cp kitty.conf ~/.config/kitty && reboot;;
        No ) cp hyprland.conf ~/.config/hypr/ && cp hyprpaper.conf ~/.config/hypr/ && cp hyprland ~/.config/hypr/ && cp config /etc/xdg/waybar && cp style.css /etc/xdg/waybar && cp kitty.conf ~/.config/kitty && reboot;;
    esac
done
