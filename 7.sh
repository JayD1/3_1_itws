#!/bin/bash

read str
c=0
for i in `echo $str | fold -w1`; do
string[$c]=$i
((c++))
done
d=$((c/2+1))
test=1
for ((i=0;i<$d;i++)); do
if [ ${string[$i]} != ${string[$((c-i-1))]} ];then
test=0
fi
done
if [ $test -eq 1 ]; then
echo PALINDROME
else
echo NOT PALINDROME
fi
