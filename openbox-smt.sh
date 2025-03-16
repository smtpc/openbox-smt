#!/bin/bash

echo "[INSTALANDO PROGRAMAS]"
sudo apt update
sudo apt install xinit xterm xorg openbox guake compton conky feh fish pcmanfm tint2 dmenu firefox-esr htop git -y

echo "[startx]"
echo -e "exec openbox-session" > ~/.xinitrc

echo "[openbox autosart]"
echo -e "compton &\nconky -c /etc/conky/conky.conf &\nfeh --bg-center ~/Downloads/*.png &\nguake" > ~/.config/autostart
