#!/usr/bin/env bash

elo () {
kon=""
(( $1 % 3 )) || kon+="na3"
(( $1 % 5 )) || kon+="na5"
(( $1 % 7 )) || kon+="na7"

echo ${kon:-$1}

}
