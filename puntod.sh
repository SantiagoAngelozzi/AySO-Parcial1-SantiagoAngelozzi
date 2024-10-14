#!/bin/bash

# Creo el directorio principal
mkdir Estructura_Asimetrica

# Creo los subdirectorios
mkdir Estructura_Asimetrica/correo
mkdir Estructura_Asimetrica/clientes

# Creo los archivos en el directorio correo
mkdir Estructura_Asimetrica/correo/cartas{01..50}

mkdir Estructura_Asimetrica/correo/carteros{01..10}

# Crear archivos en el directorio clientes
mkdir Estructura_Asimetrica/clientes/cartas{01..50}

# mostrar el resultado con tree
echo "Estructura creada:"
tree Estructura_Asimetrica

#RESULTADO: Estructura_Asimetrica
#	├── clientes
#	│   ├── cartas01
#	│   ├── cartas02
#	│   ├── cartas03
#	│   ├── cartas04
#	│   ├── cartas05
#	│   ├── cartas06
#	│   ├── cartas07
#	│   ├── cartas08
#	│   ├── cartas09
#	│   ├── cartas10
#	│   ├── cartas11
#	│   ├── cartas12
#	│   ├── cartas13
#	│   ├── cartas14
#	│   ├── cartas15
#	│   ├── cartas16
#	│   ├── cartas17
#	│   ├── cartas18
#	│   ├── cartas19
#	│   ├── cartas20
#	│   ├── cartas21
#	│   ├── cartas22
#	│   ├── cartas23
#	│   ├── cartas24
#	│   ├── cartas25
#	│   ├── cartas26
#	│   ├── cartas27
#	│   ├── cartas28
#	│   ├── cartas29
#	│   ├── cartas30
#	│   ├── cartas31
#	│   ├── cartas32
#	│   ├── cartas33
#	│   ├── cartas34
#	│   ├── cartas35
#	│   ├── cartas36
#	│   ├── cartas37
#	│   ├── cartas38
#	│   ├── cartas39
#	│   ├── cartas40
#	│   ├── cartas41
#	│   ├── cartas42
#	│   ├── cartas43
#	│   ├── cartas44
#	│   ├── cartas45
#	│   ├── cartas46
#	│   ├── cartas47
#	│   ├── cartas48
#	│   ├── cartas49
#	│   └── cartas50
#	└── correo
#	    ├── cartas01
#	    ├── cartas02
#	    ├── cartas03
#	    ├── cartas04
#	    ├── cartas05
#	    ├── cartas06
#	    ├── cartas07
#	    ├── cartas08
#	    ├── cartas09
#	    ├── cartas10
#	    ├── cartas11
#	    ├── cartas12
#	    ├── cartas13
#	    ├── cartas14
#	    ├── cartas15
#	    ├── cartas16
#	    ├── cartas17
#	    ├── cartas18
#	    ├── cartas19
#	    ├── cartas20
#	    ├── cartas21
#	    ├── cartas22
#	    ├── cartas23
#	    ├── cartas24
#	    ├── cartas25
#	    ├── cartas26
#	    ├── cartas27
#	    ├── cartas28
#	    ├── cartas29
#	    ├── cartas30
#	    ├── cartas31
#	    ├── cartas32
#	    ├── cartas33
#	    ├── cartas34
#	    ├── cartas35
#	    ├── cartas36
#	    ├── cartas37
#	    ├── cartas38
#	    ├── cartas39
#	    ├── cartas40
#	    ├── cartas41
#	    ├── cartas42
#	    ├── cartas43
#	    ├── cartas44
#	    ├── cartas45
#	    ├── cartas46
#	    ├── cartas47
#	    ├── cartas48
#	    ├── cartas49
#	    ├── cartas50
#	    ├── carteros01
#	    ├── carteros02
#	    ├── carteros03
#	    ├── carteros04
#	    ├── carteros05
#	    ├── carteros06
#	    ├── carteros07
#	    ├── carteros08
#	    ├── carteros09
#	    └── carteros10

