#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 22/11/2022
Description   : perimeter of rectangle
Sample Input  : 2 3
Sample Output : 10
doc

read -p "enter length: " l
read -p "enter width: " w

let p=$l*2+$w*2
echo "perimeter of rectangle is $p"
