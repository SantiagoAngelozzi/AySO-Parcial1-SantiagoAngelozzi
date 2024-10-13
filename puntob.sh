#!/bin/bash

# Crear 3 particiones primarias y 1 extendida que contenga una partición lógica
sudo fdisk /dev/sdc << EOF

n
P
1

+2.5G
n
p
2

+2.5G
n
p
3

+2.5G

n
e
4


n
l


w
EOF

# Formatear las particiones con ext3
mkfs.ext3 /dev/sdc1
mkfs.ext3 /dev/sdc2
mkfs.ext3 /dev/sdc3
mkfs.ext3 /dev/sdc5

# puntos de montaje y montar las particiones
mkdir -p /mnt/part_1
mkdir -p /mnt/part_2
mkdir -p /mnt/part_3
mkdir -p /mnt/part_4

# Montar las particiones
mount /dev/sdc1 /mnt/part_1
mount /dev/sdc2 /mnt/part_2
mount /dev/sdc3 /mnt/part_3
mount /dev/sdc5 /mnt/part_4

# Mostrar el resultado final de las particiones y su montaje
echo "mis particiones"
lsblk /dev/sdc

# RESULTADO:
#	NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
#	sdc      8:32   0   10G  0 disk
#	├─sdc1   8:33   0  2.5G  0 part /mnt/part_1
#	├─sdc2   8:34   0  2.5G  0 part /mnt/part_2
#	├─sdc3   8:35   0  2.5G  0 part /mnt/part_3
#	├─sdc4   8:36   0    1K  0 part
#	└─sdc5   8:37   0  2.5G  0 part /mnt/part_4

