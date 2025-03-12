#!/bin/bash

if (( $# != 1 )) ; then echo "serve un argomento"; exit 0; fi
if [[ ! -e $1 ]] ; then echo "il file $1 non esiste"; fi

./3_inverti_elenco.sh < $1
