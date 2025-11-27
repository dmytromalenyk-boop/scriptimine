#!/bin/bash

#Esmärk: arvuta mitu küpsised on vaja tordi jaoks(arvutus expr)
echo "-Küpsisetordi kalkulator-"
echo -n "Sisesta alukandiku pikus (cm):(näiteks 30) "
read alu_p
echo -n "Sisesta alukandiku laius (cm):(näiteks 20) "
read alu_l
echo -n "Pikkus üks küpsis        (cm):(näiteks  6) "
read kups_p
echo -n "Laius üks küpsis         (cm):(näiteks  3) "
read kups_l
echo -n "Mitu kihtide arv             :(näiteks  1) "
read kiht_a
echo -n "Mitu küpseste arv ühes pakis :(näiteks 40) "
read pakis_a

#Mitu küpsised mahub ühte kihti
kups_pikkuse=$(expr "$alu_p" / "$kups_p")
kups_laius=$(expr "$alu_l" / "$kups_l")
kiht1=$(expr "$kups_pikkuse" \* "$kups_laius")

#Mittu kokku  kõik kihted
kokku=$(expr "$kiht1" \* "$kiht_a")

#mittu karbis peame ostma, ja üle tükki
pakide_a=$(expr \( "$kokku" + "$pakis_a" - 1 \) / "$pakis_a")
#pakide_a=$(( (kokku + pakis_a - 1) / pakis_a ))
ost_kups=$(expr "$pakide_a" \* "$pakis_a")
kup_ule=$(expr "$ost_kups" - "$kokku")

echo "Küpsiseid rias:      $kups_pikkuse"
echo "Küpsiseid veerus:    $kups_laius"
echo "Küpsiseid ühes kihis:$kiht1"
echo "Küpsiseid kokku:     $kokku"
echo "Pakked vaja:         $pakide_a"
echo "Üle jääb:            $kup_ule"

