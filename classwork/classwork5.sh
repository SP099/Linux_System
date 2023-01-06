#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 21/11/2022
Description   : Print 1st number is multiple of 2nd
Sample Input  : 4 2
Sample Output : 4 is multiple of 2
doc


read -p "enter numbers: " a b
let t=$a
let a=$a/$b
let c=$a*$b

if [ $t -eq $c ]
then 
    echo "$t is multiple of $b"

else
    echo "$t is not multiple of $b"
fi
