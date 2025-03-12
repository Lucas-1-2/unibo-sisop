#!/bin/bash

# inverti un insieme di righe di un file SENZA ricorsione

# V1: uso tac

FILE="lista.txt"

# controllo che esista il file
if [[ ! -e $1 ]] ; then echo "il file ${1} non esiste" ; exit 1 ; fi

tac ${FILE} 
