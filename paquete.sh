#!/bin/sh
LIST_OF_APPS="libwebkitgtk-1.0 sudo vim mc x11vnc pulseaudio pavucontrol wmctrl mplayer libgtkmm-2.4 bcrypt mcrypt zip unzip ntp ntpdate htop openvpn arandr iftop locate"

apt-get update
apt-get install -y $LIST_OF_APPS
