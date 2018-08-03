#!/bin/sh
LIST_OF_APPS="libgtkmm-2.4 sudo vim mc x11vnc pulseaudio pavucontrol wmctrl mplayer libwebkitgtk-1.0 bcrypt mcrypt zip unzip ntp ntpdate htop openvpn arandr iftop"

apt-get update
apt-get install -y $LIST_OF_APPS
