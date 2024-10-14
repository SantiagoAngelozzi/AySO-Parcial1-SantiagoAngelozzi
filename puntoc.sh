#!/bin/bash

#creo los usuarios
sudo useradd -m programadores
sudo useradd -m tester
sudo useradd -m analistas
sudo useradd -m disenadores

#creo los grupos secundarios
sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

#agrego a los usuarios a sus respectivos grupos
sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupotester tester
sudo usermod -aG grupoanalistas analistas
sudo usermod -aG grupodisenadores disenadores

#hago dueños a los usuarios de los directorios corresponidentes
sudo chown programadores:grupoprogramadores parcial1/Examenes-UTN/alumno_1
sudo chown tester:grupotester parcial1/Examenes-UTN/alumno_2
sudo chown analistas:grupoanalistas parcial1/Examenes-UTN/alumno_3
sudo chown disenadores:grupodisenadores parcial1/Examenes-UTN/profesores

#modifico permisos de usuarios
						 # RESULTADO:
sudo chmod 750 parcial1/Examenes-UTN/alumno_1    # drwxr-x--- 5 programadores grupoprogramadores 4096 Oct 14 22:29 alumno_1/ 
sudo chmod 760 parcial1/Examenes-UTN/alumno_2    # drwxrw---- 5 tester        grupotester        4096 Oct 14 22:29 alumno_2/
sudo chmod 700 parcial1/Examenes-UTN/alumno_3    # drwx------ 5 analistas     grupoanalistas     4096 Oct 14 22:29 alumno_3/
sudo chmod 775 parcial1/Examenes-UTN/profesores  # drwxrwxr-x 2 disenadores   grupodisenadores   4096 Oct 14 22:29 profesores/

#validar dentro de cada carpeta añadiendo un archivo validar.txt con el nombre de usuario usando el comando whoami
							# RESULTADO:
sudo -u programadores whoami > parcial1/validar.txt     # programadores         
sudo -u tester whoami >> parcial1/validar.txt           # tester
sudo -u analistas whoami >> parcial1/validar.txt        # analistas
sudo -u disenadores whoami >> parcial1/validar.txt      # disenadores
