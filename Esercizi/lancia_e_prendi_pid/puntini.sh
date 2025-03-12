#!/bin/bash

if (( $#!=1 ));
then
	echo "wrong usage";
	exit 1;
fi;

if (( $1<1 ));
then
	echo "wrong usage";
	exit 1;
fi;

#TIME = contatore che parte dal numero ricevuto in input
TIME=$1;

# per 'TIME' volte: aspetto 1 secondo e stampo il PID corrente
while (( ${TIME}>0 ));
do
	sleep 1;
	echo -n ".${BASHPID}";
	(( TIME=${TIME}-1 ));
done;
echo "";
