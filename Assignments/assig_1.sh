#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 26/11/2022
Description   : Read 'n' and Generate pattern(increasing left to right)
Sample Input  : 4
Sample Output : 1
                1 2
                1 2 3
                1 2 3 4
doc

# Read input from user of n size Pattern
read -p "Enter the number : " n

# Initiate first loop for increamenting row
for row in `seq $n`
do

# Initiate second loop for incrementing column
    for col in `seq $n`
    do

# check condition for column less than equal to row
        if [ $col -le $row ]
        then 

# if condition is true then print column by increamenting left to right            
            echo -n "$col "
        fi

# terminate the second loop        
    done

# jump to next line    
    echo

#terminate first loop
done
