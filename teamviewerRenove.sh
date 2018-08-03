#!/bin/bash

####################################
#  DESARROLLADO POR SERGIO SUAREZ  #
####################################

echo "Los gnomos están cambiando el ID. Espera, por favor"
teamviewer daemon stop
rm /etc/teamviewer/global.conf
teamviewer daemon start
teamviewer start
teamviewer --passwd 1lt1b4x
clear
echo "Los gnomos terminaron. ¡Ya tienes un ID nuevo!"
echo "No olvides desactivar la contraseña aleatoria"
