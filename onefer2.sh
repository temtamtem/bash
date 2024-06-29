#!/usr/bin/env bash

main(imie) {
    czy=0

    tablica=('arek' 'czarek' 'darek')
    l_elem=${#tablica[@]}
    c=0
    for ((c=0;c<$l_elem;))
    do
        echo $c
        if [ "${tablica[$c]}" == "$imie" ]
        then
        czy=1
        break
        fi
        c=$((c+1))

    done

    if [ $czy == 1 ]
    then
        printf $imie
    else
        printf "you"
    fi
}
