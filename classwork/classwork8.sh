#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 24/11/2022
Description   : print 'n' fibonacci terms
Sample Input  : 5
Sample Output : 0 1 1 2 3 
doc

read -p "enter a number:" n
a=-1
b=1
i=0
while [ $i -lt $n ]
do
    let c=$a+$b
    echo -n "$c "
    a=$b
    b=$c
    i=$(($i+1))
done

