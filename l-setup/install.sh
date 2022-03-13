#!/bin/sh

#####################################

*/
cp -r ./.config ~/
cp -r ./.local ~/
cp -r ./.xinitrc ~/
cp -r ./.zshrc ~/
cp -r ./dmenu ~/.config/
cp -r ./dwm/* ~/.config/
cp -r ./st ~/.config/

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

#####################################

# min-requirements
*/

sudo pacman -Sy --noconfirm \
     noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono ttf-joypixels ttf-font-awesome \
     #sxiv mpv ffmpeg imagemagick  \
     #fzf xwallpaper python-pywal youtube-dl unclutter xclip maim \
     #xdotool papirus-icon-theme brightnessctl  \
     #git sxhkd zsh \
     #vim arc-gtk-theme rsync dash \
     #xcompmgr libnotify dunst slock jq sed \
     #dhcpcd networkmanager rsync pamixer