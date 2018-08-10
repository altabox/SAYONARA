#!/bin/bash

####################################
#     DESARROLLADO POR Juanjo      #
####################################

paquete=teamviewer
input=$1 #Definimos función de entrada.

function instalador() {
dpkg -s $paquete
if [[ $? -eq 0 ]]
then
  echo "el paquete ${paquete} se encuentra instalado"
  exit 0
else
  echo "el paquete ${paquete} no se encuentra instalado"
  echo "procediendo a instalar ${paquete}"
  apt install-y $paquete
fi
}

instalador
