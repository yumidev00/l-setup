#!/bin/bash

read -s -p "Enter Password for sudo: " sudoPW

#####################################

mkdir ~/.config
mkdir ~/pix

cp -r ./.config ~/
cp -r ./.local ~/
cp -r ./.xinitrc ~/
cp -r ./.bash_profile ~/
cp -r ./.zshrc ~/
cp -r ./dmenu ~/.config/
cp -r ./dwm ~/.config/
cp -r ./st ~/.config/
cp -r ./.local/share/wall ~/pix/

#####################################

cd ~/.config/dmenu
sudo make clean install

cd ~/.config/dwm
sudo make clean install

cd ~/.config/st
sudo make clean install

#####################################

sudo cp -r ~/.config/dmenu/dmenu /bin
sudo cp -r ~/.config/dwm/dwm /bin
sudo cp -r ~/.config/st/st /bin

sudo cp -r ~/.local/bin/* /usr/local/bin

#####################################

# min-requirements

sudo pacman -Sy xcompmgr libnotify dunst \
     slock jq sed sxiv fzf xwallpaper python-pywal \
     youtube-dl unclutter xclip maim git sxhkd zsh \
     xdotool dash \
     xorg-server xorg-xinit xorg-xkill xorg-xsetroot \
     xorg-xbacklight xorg-xprop \
     noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono ttf-joypixels ttf-font-awesome

     #noto-fonts-cjk \

     #sxiv mpv ffmpeg imagemagick  \
     #fzf xwallpaper python-pywal youtube-dl unclutter xclip maim \
     #xdotool papirus-icon-theme brightnessctl  \
     #git sxhkd zsh \
     #vim arc-gtk-theme rsync dash \
     #xcompmgr libnotify dunst slock jq sed \
     #dhcpcd networkmanager rsync pamixer
     
     yay -Sy libxft-git
