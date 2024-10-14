#!/bin/bash

# Obtener la IP pública y guardarla en una variable
IP=$(curl -s ifconfig.me)

# Obtener el nombre del usuario actual
USER=$(whoami)

# Obtener el hash del usuario actual desde /etc/shadow
HASH=$(sudo grep "$USER" /etc/shadow | awk -F: '{print $2}')

# Crear el archivo Filtro_Avanzado.txt con los datos obtenidos
echo "Mi IP Pública es: $IP" > ~/parcial1/Filtro_Avanzado.txt
echo "Mi usuario es: $USER" >> ~/parcial1/Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $HASH" >> ~/parcial1/Filtro_Avanzado.txt
