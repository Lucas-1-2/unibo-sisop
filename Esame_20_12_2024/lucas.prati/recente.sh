#!/bin/bash

DIR=`find /usr/include/ -type d -name "*a*"`;
newer=${DIR#* } 

for dir in ${DIR#};
do
	if [[ ${dir} -nt ${newer} ]];
	then
		newer=${dir};
	fi;
done;

echo "${newer}";
