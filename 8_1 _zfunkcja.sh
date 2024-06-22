#!/usr/bin/bash

praca(){
katalog=$1
if [ $2 ]
then
    rozszerzenie="."$2
else
    rozszerzenie=""
fi
if [ $3 ]
then
    pd=$3
else
    pd=1
fi
s=$katalog"/*"$rozszerzenie
prss=$(($pd * 86400))
for plik in $s
do
    czas=$(stat -c "%X" $plik)
    minCzas=$(date +"%s")
    minCzas=$(($minCzas - $prss))
    if (($czas>=$minCzas))
    then
        echo $plik" czas: "$czas
    fi
done
