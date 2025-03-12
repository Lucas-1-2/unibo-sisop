#!/bin/bash

# ESERCIZIO 2 ESAME NUMERO 2 turno 1 del 20/12/2024

# conta le occorrenze del carattere 'c' all'interno di 4 righe totali
# usare unicamente questo file, senza passare argomenti, senza usare o creare altri file

STRINGA="ce la faccio a farlo"

(( NUM=` echo "${STRINGA//'c'/$'\n'}" | wc -l `-1 ))

echo $NUM
