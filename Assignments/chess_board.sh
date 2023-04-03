#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 29/11/2022
Description   : script to print chess board
Sample Input  :
Sample Output :
doc

#initiate 1st loop for row with increamenting
for i in `seq 8`
do

#initilize k w.r.t i
    k=$i

#initiate 2nd loop for column with increamenting
    for j in `seq 8`
    do
         t=$(($k%2))
#check condition for white box if reminder is 1 print whilte box
        if [ $t -eq 1 ]
        then
            echo -e -n "\e[47m" " "

#if cond is false then print black box
        else
            echo -e -n "\e[40m" " "
 
#close the condition
        fi

#increment k        
            k=$(($k+1))  


#terminate 2nd loop
    done

#make the color normal after 8 column
echo -e -n "\e[0m" " "

#jump to next line    
echo
    
#terminate 1st loop   
done
