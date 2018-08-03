#!/bin/bash

####################################
#  DESARROLLADO POR SERGIO SUAREZ  #
####################################

if [ -d /root/.backup ];
then 
    if [ -f /root/.backup/global.conf.backup ];
    then
	echo "El backup ya existe"
    else
	sed '8 c[int32] ClientID =' /etc/teamviewer/global.conf > /root/.backup/global.conf
	sed '10 c[strng] LastMACUsed =' /root/.backup/global.conf > /root/.backup/global.conf.backup
	rm /root/.backup/global.conf
	echo "Backup generado con éxito"
    fi
else
    mkdir /root/.backup
    sed '8 c[int32] ClientID =' /etc/teamviewer/global.conf > /root/.backup/global.conf
    sed '10 c[string] LastMACUsed =' /root/.backup/global.conf > /root/.backup/global.conf.backup
    rm /root/.backup/global.conf
    echo "Backup generado con éxito"
fi
