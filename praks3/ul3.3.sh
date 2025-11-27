#!/bin/bash

#Esmärk: peab lubama kasutajale sisestada mitu reisijat on grupis ning kohtade arvu bussis. Tulemusena väljastatakse mitu on täielikult täidetud bussi ja mitu inimest on maha jäänud
echo " - Info - "
echo -n "Mitu reisijat on grupis: "
read reisijat
echo -n "Mitu istukoht busisis:   "
read istukoht

#Mitu bussis vajame
buss_a=$(expr "$reisijat" / "$istukoht")
inim_busisse=$(expr "$buss_a" \* "$istukoht")
ule_reisijat=$(expr "$reisijat" - "$inim_busisse")

echo " - Arvutus - "
echo "Buss vaja:              $buss_a"
echo "Inimest ilma bussita:   $ule_reisijat" 

