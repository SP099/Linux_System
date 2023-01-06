#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 21/11/2022
Description   : check whether the triangle is perfect right triangle
Sample Input  : 5 12 13
Sample Output : triangle is perfect right triangle
doc

read -p "enter sides of triangle: " a b c
let a=$a*$a
let b=$b*$b
let c=$c*$c
let t=$a+$b
let i=$b+$c
let l=$c+$a
if [ $t -eq $c ]
then 
    echo "triangle is perfect right triangle"

elif [ $i -eq $a ]
then 
    echo "triangle is perfect right triangle"

elif [ $l -eq $b ]
then
    echo "triangle is perfect right triangle"

else
    echo "triangle is not perfect triangle"
fi

