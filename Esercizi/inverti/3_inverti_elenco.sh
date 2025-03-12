#!/bin/bash

# V3: RICORSIVO, viene chiamato da uno script che gli passa il file 

if read LINEA ; then
  ./3_inverti_elenco.sh
  echo "${LINEA}"
fi
