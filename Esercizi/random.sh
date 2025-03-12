#!/bin/bash

# questo script mostra i diversi modi per avere un 
# numero "random"


# 1: numero random a caso
VAR=$RANDOM
echo $VAR


# 2: numero random compreso tra 0 e NUM-1
NUM=5
(( VAR=${RANDOM}%${NUM} )) 
echo $VAR


# 3: numero random compreso tra 1 e NUM
NUM=10
(( VAR=1+${RANDOM}%${NUM} )) 
echo $VAR


# 4: numero random (se all'inizio lo inizializzo, 
#	 rimangono uguali le successive generazioni
#	 utile per i test.
RANDOM=2
echo "--"
VAR=$RANDOM
echo $VAR
VAR=$RANDOM
echo $VAR
echo "NB le 2 righe sopra sono sempre uguali"



