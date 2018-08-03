#!/bin/bash

####################################
#  DESARROLLADO POR SERGIO SUAREZ  #
####################################

if [ -d /etc/teamviewer/ ];
then
    echo "TeamViewer ya está instalado"
else
    echo "TeamViewer no instalado. Dejemos que los gnomos trabajen"
    sleep 1
    cd /home/altabox/Descargas
        if [ -f /home/altabox/Descargas/teamviewer_amd64.deb ];
        then
            echo "Ya existe el fichero"
            dpkg -i teamviewer_amd64.deb
            apt-get -f install
        else
            wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
            dpkg -i teamviewer_amd64.deb
            apt-get -f install
        fi
            rm teamviewer_amd64.deb
fi
    clear
    echo "Parece que los gnomos de Altabox terminaron de trabajar"
cd 
exit