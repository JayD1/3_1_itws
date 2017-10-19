#!/bin/bash

HISTFILE=~/.bash_history  # Set the history file.
set -o history
c=0 
search=`history | tr -s " " | cut -d" " -f 3 | sort | head -1`
echo $search `history | grep "$search" | wc -l`
history | tr -s " " | cut -d" " -f 3 | sort |  while read k; do
    count=`history | tr -s " " | cut -d" " -f 3 | sort | grep $k | wc -l`
    search1=$k      
    if [ $search1 != $search ];then
        echo $search1 $count
        search=$search1 
    fi
done
