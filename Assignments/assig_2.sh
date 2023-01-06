#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 26/11/2022
Description   : Read 'n' and generate a pattern(number incresing for top tobootam)
Sample Input  : 4
Sample Output : 1
                2 3
                4 5 6
                7 8 9 10
doc

# Read input from user of n size pattern
read -p "Enter the number:" n

# Initilize k
k=1

# Initiate first loop for row
for row in `seq $n`
do

# Initiate 2nd loop for column
    for col in `seq $n`
    do

# check condition for colum less than equal to row
        if [ $col -le $row ]
        then

# print k
            echo -n "$k "

# Increament k
            k=$(($k+1))

# Close the condition
        fi

# Terminate second loop
    done

# jump to next line
    echo

# Terminate 1st loop
done

#terminate the program
