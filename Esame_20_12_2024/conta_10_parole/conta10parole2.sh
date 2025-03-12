#!/bin/bash

# stampare a video il numero di parole "int" totali
# trovate tra le prime 10 parole di ciascuna riga
# del file ./prova.txt
# Attenzione, le parole che includono int non vanno contate.
# Ad esempio, le parole inta e bint non vanno contate.
# Il file passato come argomento ha 9 di queste parole int
# percio' lo script deve stampare a video 9

# Notare che metto una variabile in piu' delle 10 parole che devo leggere in ogni riga.

counter=0
while read {A..K}; do
        for word in {A..J} ; do
                if [[ -n ${!word} && ${!word} == "int" ]] ; then
                        (( counter=${counter}+1 ))
                fi
        done
done < ./prova.txt

echo contate $counter parole \"int\"

