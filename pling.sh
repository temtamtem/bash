#!/usr/bin/env bash

elo () {
kon=""
if (( $1%3 == 0 ))
then
    kon+="Pling"
fi

if (( $1%5 == 0 ))
then
    kon+="Plang"
fi
if(( $1%7 == 0 ))
then
    kon+="Plong"
else
    echo "$1"
fi
echo $kon
}
