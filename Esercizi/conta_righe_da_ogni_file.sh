#!/bin/bash

# in questa cartella, conta le righe totali  come somma delle righe di ogni file

NUM=0

for i in `find ./* -type f`  ; do
	if [[ -r $i ]] ; then
		(( NUM=${NUM}+`cat $i | wc -l` )) ;
	fi
done

echo $NUM
