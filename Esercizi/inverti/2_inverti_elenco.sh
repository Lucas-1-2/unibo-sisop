#!/bin/bash

# inverti un insieme di righe di un file SENZA ricorsione

# V2: numero le righe, inverto con sort -n -r (numerico reverse) e rimuovo il numero di riga

# NB qui il file lo passo da riga di comando

# controllo di aver inserito un argomento solo
if (( $# != 1 )) ; then echo "serve un argomento" ; exit 1 ; fi

# controllo che esista il file
if [[ ! -e $1 ]] ; then echo "il file ${1} non esiste" ; exit 1 ; fi

COUNT=0
while read RIGA ; do
	echo "${COUNT} ${RIGA}" ;
	(( COUNT=${COUNT}+1 )) ;
	
done < $1 | sort -n -r | 

while read NUM RIGA ; do echo "${RIGA}" ; done
