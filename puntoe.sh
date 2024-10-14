#!/bin/bash

#filtro la linea de "MemTotal" del archivo y la redirecciono al .txt
grep "MemTotal" /proc/meminfo > Filtro_Basico.txt

#obtengo la info del chasis, filtro el nomre del fabricante y lo añado al .txt
sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt

#lo muestro por terminal
echo "informacion de memoria ram y frabricante"
cat Filtro_Basico.txt

#RESULTADO:
#	informacion de memoria ram y frabricante
#	MemTotal:        2010896 kB
#       Manufacturer: Oracle Corporation
