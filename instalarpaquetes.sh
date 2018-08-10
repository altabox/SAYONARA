#!/bin/bash

####################################
#     DESARROLLADO POR Juanjo      #
####################################


if ! which teamviewer > /dev/null; then
   echo -e "Paquete no encontrado ¿Instalar? (y/n) \c"
   read
   if "$REPLY" = "y"; then
      apt-get install teamviewer
   fi
   
fi
