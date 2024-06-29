#!/usr/bin/env bash

main () {
acr=""

zdan=$1
 for slow in $zdan
 do
    acr+=${slow:0:1}
 done
echo $acr
}

main "$@"
# ''
