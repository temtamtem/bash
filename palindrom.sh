#!/usr/bin/env bash

main () {
read zma

for ((i=0;i<=${#zma};i++))
do
    acr+=${zma:${#zma}-i:1}


done

echo "$acr"
}

main "$@"
