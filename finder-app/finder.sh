#!/usr/bin/bash

if [ $# -lt 2 ] 
then
    echo "This application requieres two arguments \"filesdir\" and \"searchstr\" to work"
    exit 1
fi

if ! [[ -d $1 ]]
then 
    echo "The \"filesdir\" string does not represent valid directory"
    exit 1
fi

number_of_lines=$(grep -sorch $2 $1* | wc -l)
number_of_files=$(find $1 -type f -name "*" | wc -l)



echo "The number of files are $number_of_files and the number of matching lines are $number_of_lines"