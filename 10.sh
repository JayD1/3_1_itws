#!/bin/bash
a=0
for i in $@; do
num[$a]=$i
((a++))
done
exp=${num[0]}
for ((i=1; i<$#; i++)); do
exp=$(($exp ** ${num[$i]}))
done
echo $exp
