#!/bin/bash


# trova la cartella più recente all'interno di /usr/include/ 
# che contiene il carattere 'a'


DIR=`find /usr/include/ -type d -name "*a*"`;
newer=${DIR#* } 

for dir in ${DIR#};
do
	if [[ ${dir} -nt ${newer} ]]; # -nt new, -ot old
	then
		newer=${dir};
	fi;
done;

echo "${newer}";
