#!/usr/bin/env bash

elo () {

plik="imiona.txt"

grep -q -w "${1}" "${plik}"
status=$?
if [ $status -eq 0 ]
then
echo "git"
else
echo "nope"
fi

}
