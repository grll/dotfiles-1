#!/bin/bash

yay -S i3
yay -S i3lock-color-git
yay -S lightdm-slick-greeter lightdm-mini-greeter
sudo mv /etc/lightdm/slick-greeter.conf /etc/lightdm/slick-greeter.conf.bak
# dont ln because boot stuff
sudo cp $(pwd)/greeter/slick-greeter.conf /etc/lightdm/slick-greeter.conf
sudo mv /etc/lightdm/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf.bak
# dont ln because boot stuff
sudo cp $(pwd)/greeter/lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf
sudo sed -i s/lightdm-webkit2-greeter/lightdm-mini-greeter/ /etc/lightdm/lightdm.conf
sudo sed -i s/user-session=gnome/user-session=i3/ /etc/lightdm/lightdm.conf

yay -S zsh
yay -S zsh-autosuggestions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
rm ~/.oh-my-zsh/custom -rf
ln -s $(pwd)/oh-my-zsh/custom ~/.oh-my-zsh/custom
sed -i s/robbyrussell/simple_custom/ ~/.zshrc

yay -S feh

yay -S scrot

yay -S rofi-git

yay -S xautolock

yay -S compton

yay -S xbacklight

yay -S playerctl

yay -S terminator

yay -S xclip

yay -S ranger w3m

yay -S gvim vim-youcompleteme-git vim-ctrlp vim-nerdtree

git config --global core.editor "vim"

yay -S otf-font-awesome ttf-roboto ttf-roboto-mono

yay -S arandr

echo "








You still have to:
- add gesturefy to firefox
- change the greeter
- add dotfile sourcing and config to zsh
- change stuff in /usr/share/i3blocks
- add fonts to ~/.gtk-2.0 and ~/.config/gtk-3.0/settings.ini
- add different utilities like dropbox/telegram/cloudstation/spotify
"