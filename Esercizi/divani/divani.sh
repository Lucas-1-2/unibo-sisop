#!/bin/bash

# stampa a video i divani che rispettano le proprietà
# 2 argomenti di input
# file: nomeDivano larghezza altezza profondità



# controllo input
if (( $# != 2 )) ; then
	echo "Errore, servono 2 argomenti, larghezza_min e altezza_max"
	exit 1
fi

LARG_MIN=$1
ALT_MAX=$2

while read NOME LARG ALT PROF ALTRO; do
	# echo "Ho letto: $NOME $LARG $ALT $PROF $ALTRO"
	if (( ${LARG} >= ${LARG_MIN} && ${ALT} <= ${ALT_MAX} )) ; then
		echo "$NOME $LARG $ALT $PROF"
	fi

done < ./divani.txt
