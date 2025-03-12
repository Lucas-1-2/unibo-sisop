#!/bin/bash

if (( $# != 1 )) ; then echo "serve un argomento"; exit 0; fi
if [[ ! -e $1 ]] ; then echo "il file $1 non esiste"; fi

NUMRIGHE=`wc -l $1`
# echo NUMRIGHE $NUMRIGHE
# tolgo dall'output la seconda parola, cioe' il nome del file
read NUMRIGHE NOMEFILE <<<${NUMRIGHE}
# echo NUMRIGHE $NUMRIGHE
for (( indice=1; $indice<=${NUMRIGHE}; indice=$indice+1 )) ; do
	tail -n $indice $1 | head -n 1
done

