#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

read -p "enter number: " n
fact=1
i=1
while [ $i -le $n ]
do 
    let fact=$fact*$i
    let i=$i+1
done
echo "$fact"
echo "loop terminated"

