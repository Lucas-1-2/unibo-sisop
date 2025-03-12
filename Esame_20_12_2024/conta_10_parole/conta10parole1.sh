#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

counter=0
while read RIGA; do
        CONTA=0
        for parola in ${RIGA}; do
                if (( $CONTA < 10 )); then
                        if [[ "$parola" = "int" ]]; then
                                ((counter=${counter}+1))
                        fi
                fi
                ((CONTA=${CONTA}+1))
        done
done < "./prova.txt"

echo contate $counter parole \"int\"

