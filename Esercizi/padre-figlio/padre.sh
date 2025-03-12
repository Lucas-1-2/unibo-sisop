#!/bin/bash

for (( i=0; $i<10; i++ )) ; do
  ./figlio.sh  &
done
while true ; do
  sleep 2
  NUMJOBS=`jobs | grep Running | wc -l`
  echo $NUMJOBS
  if (( $NUMJOBS==0 )) ; then
    exit 0
  fi
done


