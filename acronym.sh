#!/usr/bin/env bash

main () {
echo "podaj ciag"
zma="             LIGA            POLSKICH       RODZIN         "
licz=0
numer=0
acr=""


#POCZATKOWE
for ((i=0;i<=${#zma};i++))
do
    if [[ ${zma:i:1} == " " ]]
    then
    ((numer++))
    else
    break
    fi

done

zma=${zma:$numer-1:${#zma}-$numer}

#KONCOWE
numer=0
for ((i=0;i<=${#zma};i++))
do
    if [[ ${zma:${#zma}-i-1:1} == " " ]]
    then
    ((numer++))
    else
    break
    fi

done

zma=${zma:1:${#zma}-$numer-1}
echo $zma

#AKRONIMOWANIE
for ((i=0;i<=${#zma};i++))
do
    echo "pocz for"
    if [[ "${zma:i:1}" != " " ]]
    then
        echo "if"
        acr+="${zma:i:1}"
        echo "dodalem:${zma:i:1} i wszylo  acr:$acr i=$i"
        while [[ ${zma:i:1} != " " ]] && (( $i<${#zma}))
            do
            echo "$i ${zma:i:1} powt while"
            ((i++))
            done
    else
       echo "else, i=$i"
    fi
done

printf "wyniki:\n$zma\nakronim: $acr\n"

echo $numer
}

main "$@"
