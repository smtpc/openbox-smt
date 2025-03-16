#!/bin/bash

echo "[INSTALANDO PROGRAMAS]"
sudo apt update
sudo apt install xinit xterm xorg openbox guake compton conky feh fish pcmanfm tint2 dmenu firefox-esr htop git -y

echo "[startx]"
echo -e "exec openbox-session" >> ~/.xinitrc

echo "[conky files]"
sudo cp conky.conf /etc/conky/conky.conf

echo "[openbox autosart]"
wget -P ~/Downloads https://www.kali.org/wallpapers/images/2025/kali-maze.jpg
echo -e "compton &\nconky -c /etc/conky/conky.conf &\nfeh --bg-center ~/Downloads/kali-maze.jpg &\nguake" > ~/.config/autostart

