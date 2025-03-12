#!/bin/bash

# dal file di testo lista.txt

# mette in output le matricole 
# degli studenti che vogliono sostenere 
# l'esame di "SISTEMI OPERATIVI"

cat lista.txt |
grep -B 1 --no-group-separator "OPERATIVI" | 
grep -v "OPERATIVI" | 

while read MATR COGNOME NOME ALTRO ; do
	echo ${MATR} ;
done
