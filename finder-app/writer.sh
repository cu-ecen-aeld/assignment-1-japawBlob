#!/usr/bin/bash

if [ $# -lt 2 ] 
then
    echo "This application requieres two arguments \"writefile\" and \"writestr\" to work"
    exit 1
fi

mkdir -p $(dirname $1)
if [ $? != 0 ]
then 
    echo "Could not create parent directories"
    exit 1 
fi

echo $2 > $1 

if [ $? != 0 ]
then 
    echo "Could not create file"
    exit 1 
fi