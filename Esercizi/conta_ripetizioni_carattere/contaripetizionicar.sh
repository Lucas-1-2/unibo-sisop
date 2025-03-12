#!/bin/bash

# VAR="pescecane"

VAR=$1

# check dell'input
if [[ "${VAR}" == "" ]] ; then
	echo "manca l'argomento"
	exit 1
fi

COUNT=0

for (( COUNT=0; $COUNT<${#VAR}; COUNT=${COUNT}+1 )) ; do
   echo "${VAR:${COUNT}:1}" ;
   # stampa da dentro VAR, dall'offset COUNT, per una lunghezza di 1
   # "${VAR:offset:lenght}"

done | sort | uniq -c 

#sort ordina

# uniq -c rimuove i doppioni adiacenti e 
# aggiunge il numero di volte

