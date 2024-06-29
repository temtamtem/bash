#!/usr/bin/env bash

main () {
wyn=0
myk=$1
dl=${#myk}
for ((i=0;i<=$dl;i++))
do
    wyn+=$(( ${myk:i:1} ** dl ))
done
echo $wyn
}

main "$@"
# ''
