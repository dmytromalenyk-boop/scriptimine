#!/bin/bash
#See on minu  esimene skript
hinne=3
nimi="Mark"
kataloog=$(pwd)
kasutaja=$(whoami)
kell=$(date +%H:%M:%S)
#minu_date=$ (date +%m.%d_%H:%M)

#minu_date=$ (date +%m.%d_%H:%M)
minu_date=$(date +%m.%d_%H:%M)
failinimi=backup_$kell.txt
echo  "Tere, Sina asud kataloogis: $kataloog "

echo "ja sina oled kasutaja: $kasutaja "
touch $kataloog/$failinimi
echo "ma loon sulle fail kataloogis: $kataloog nimega $failinimi´"
ls -l $kataloog
