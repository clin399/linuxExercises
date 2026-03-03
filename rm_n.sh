#!/bin/bash


#Make sure there are 2 arguments
if [ "$#" -ne 2 ]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 1
fi

dir="$1"
n="$2"
#Make sure directory exists

if [ ! -d "$dir" ]; then
    echo "error: '$dir' is not a directory" 1>&2
    exit 1
fi
#Reomve files larger than n bytes
find "$dir" -type f -size +"$n"c -exec rm {} \;
