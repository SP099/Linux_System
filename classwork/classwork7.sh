#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 24/11/2022
Description   : print even numbers between 1 and 100
Sample Input  :
Sample Output :
doc

<<c
read -p "enter number: " n
let x=$n*2
for even in `seq 2 2 $x`
do
    echo -n "$even "
done
c

<<c
for even in `seq 2 2 100`
do
   echo -n "$even "
done
c

<<c
read -p "enter number: " n
i=1
while [ $i -le $n ]
do
        let x=$i*2
        echo -n "$x "
    i=$(($i+1))

done
c

i=1
while [ $i -le 50 ]
do
       let x=$i*2
        echo -n "$x "
    i=$(($i+1))

done

<<odd
i=1
while [ $i -le 100 ]
do
        echo -n "$i "
    i=$(($i+2))

done
odd
