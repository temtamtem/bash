#!/usr/bin/env bash

main () {
if [ -z $1 ]
then
zma="GAGCCTACTAACGGGAT"
else
zma="$1"
fi
if [ -z $2 ]
then
zmb="CATCGTAATGACGGCCT"
else
zmb="$2"
fi
por=""
for ((i=0;i<=${#zma};i++))
do
    if [[ "${zma:i:1}" != "${zmb:i:1}" ]]
    then
        por+="^"
    else
        por+=" "
    fi

done

printf "$zma \n$zmb\n$por\n"
}

main "$@"
