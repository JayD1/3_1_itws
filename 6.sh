#!/bin/bash
a=0
read str
k=")"
g="("
for i in `echo $str | fold -w1`
do
if [[ ("$i" != $k) && ("$i" != $g) ]]; then 
string[$a]=$i
((a++))
fi
done
echo \(${string[@]}\)
