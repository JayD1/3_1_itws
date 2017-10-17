#!/bin/bash
HISTFILE=~/.bash_history  # Set the history file.
set -o history
c=0 
history | tr -s " " | cut -d" " -f 3 | sort | uniq | while read d; do
str[$c]=$d
echo $d
((c++))
done
c1=`history | wc -l`
echo $c1
for i in $c1; do
var=`history | tr -s " " | cut -d" " -f 3 | sort`
count=0
if [ $i == 
