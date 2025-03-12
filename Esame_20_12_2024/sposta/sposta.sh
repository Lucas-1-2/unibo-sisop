#!/bin/bash

if (( $# == 0 )) ; then echo "manca argomento"; exit 0; fi
NOMEFILE=$1
NOMEFILECOPIA=${NOMEFILE}.copy
if [[ ! -e ${NOMEFILE} ]] ; then echo "file non esiste"; exit 0; fi
if [[ -e ${NOMEFILECOPIA} ]] ; then rm ${NOMEFILECOPIA}; fi
COUNT=0
while read RIGA ; do
        if (( $COUNT == 0 )) ; then
           PRIMARIGA="${RIGA}"
        else
           echo "${RIGA}"
  fi
        (( COUNT=$COUNT+1 ))
done < ${NOMEFILE} > ${NOMEFILECOPIA}

echo "${PRIMARIGA}" >> ${NOMEFILECOPIA}


