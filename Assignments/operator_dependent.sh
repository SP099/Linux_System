#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 02/12/2022
Description   : perform arithmetic operation on digits of a given number and display result
Sample Input  : ./operator_dependent.sh 1234+
Sample Output : Sum of digits = 10
doc

if [ $# -gt 0 ]
then

var=$1
op=${var: -1}
first=${var:0:1}
length=$((${#var}-2))
 
   case $op in
      +) 
        
        for i in `seq 1 $length`
        do
            first=$(echo "scale=2;$first+${var:$i:1}" | bc )
        done
        echo "sum of digits=$first"
          ;;

      -) 
        
        for i in `seq 1 $length`
        do
            first=$(echo "scale=2;$first-${var:$i:1}" | bc )
        done
        echo "substraction of digits=$first"
          ;;

      x) 
        
        for i in `seq 1 $length`
        do
            first=$(echo "scale=2;$first*${var:$i:1}" | bc )
        done
        echo "multiplication of digits=$first" 
          ;;

      /) 
        
        for i in `seq 1 $length`
        do
            first=$(echo "scale=2;$first/${var:$i:1}" | bc )
        done
        echo "division of digits=$first" 
          ;;

      *)
     
       echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
       ;;
    esac


else
 echo "Error : Please pass the arguments through CL."
 echo "Usage : ./operator_dependent.sh 2345+"

#close the condition
fi
