#!/bin/bash

if (( $# == 0 )) ; then echo "manca argomento"; exit 0; fi
NOMEFILE=$1
NOMEFILECOPIA=${NOMEFILE}.copy
if [[ ! -e ${NOMEFILE} ]] ; then echo "file non esiste"; exit 0; fi

n=$( wc -l < $NOMEFILE )
NRIGHEMENOUNA=$(( ${n}-1 ))

tail -n $NRIGHEMENOUNA $NOMEFILE  > $NOMEFILECOPIA
head -n 1 $NOMEFILE  >> $NOMEFILECOPIA

