#!/usr/bin/env bash

main () {
zd=$1
licz=0
alfabet="abcdefghijklmnopqrstuvwxyz"
for ((i=0;i<=${#alfabet}-1;i++))
do
    lit=[${alfabet:i:1}]
    echo "$i: $lit"
    [[ $zd =~ $lit ]] && (( licz++ ))

done
echo $licz

}

main "$@"
# [[ $zd =~ [a] ]] && [[ $zd =~ [b] ]] && [[ $zd =~ [c] ]] && [[ $zd =~ [d] ]] && [[ $zd =~ [e] ]] && echo "git"
