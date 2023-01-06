#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

read -p "enter a num: " n
sum=0
i=1
while [ $i -le $n ]
do
    let sum=$sum+$i
    let i=$i+1
done
echo "$sum"
echo "loop terminated"
