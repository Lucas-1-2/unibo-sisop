#!/bin/bash

T1="La civetta mattutina casca in piedi la mattina"
T2="Tanto va la gatta al largo che ci lascia lo zio pino"
T3="Fin che la barca va lasciala andare"
T4="Trentatre trentini entrarono a Trento trotterellando"



NUM=0;

#VIC: errore logico, leggi da stdin, non leggi la stringa.
# lo script non termina.

while read CAR -n 1 ;  do
	if (( CAR = 'c' )) ; then 
		(( NUM=${NUM}+1));
	fi
done 

echo ${NUM};

# 



