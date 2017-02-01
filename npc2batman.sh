#! /bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit 1
fi

if [ -z "$1" ]
   then
     echo "/path/to/input.csv needs to provided"
     exit 1
fi

if [ -z "$2" ]
   then
     echo "/path/to/out.txt needs to provided"
     exit 1
fi

/usr/local/bin/npc2batman.py $1 $2
