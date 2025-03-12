#!/bin/bash

for (( i=0 ; i<10 ; i++ )) ;
do
	(./puntini.sh 10 > /dev/null) & 
	echo -n "$! "; # con -n non vado a capo alla fine della stampa
done;
echo "";
