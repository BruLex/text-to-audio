#!/bin/bash

if [ "$1" != "" ] && [ "$2" != "" ]; then
echo "start"
API_KEY=$1
FILE=$2

while read LINE
do

    if [ "$LINE" != "" ]; then
     list=(${LINE// : / })
     ./texttospeech.sh $API_KEY ${list[0]} "\"${list[@]:1}\""
    fi
done < $FILE
fi