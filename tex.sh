#!/bin/bash

LATEST_FILE1="`pwd`/`ls -lt *.tex | head -n 1 | awk '{print $9}'`"
command1="platex $LATEST_FILE1"
eval $command1

LATEST_FILE1="`pwd`/`ls -lt *.tex | head -n 1 | awk '{print $9}'`"
command1="platex $LATEST_FILE1"
eval $command1

LATEST_FILE2="`pwd`/`ls -lt *.dvi | head -n 1 | awk '{print $9}'`"
command2="dvipdfmx $LATEST_FILE2"
eval $command2

if [ -e ${LATEST_FILE2%dvi}log ] ;
then
  rm ${LATEST_FILE2%dvi}log
fi

if [ -e ${LATEST_FILE2%dvi}aux ] ;
then
  rm ${LATEST_FILE2%dvi}aux
fi

rm $LATEST_FILE2
