#!/bin/bash

<<doc
Name          : Sushant Patil
Date          :
Description   :
Sample Input  :
Sample Output :
doc

#store command line arguments in array (-a 1,2,4,6),1st cla must be choice(-a for ascending or -d for descending order)
arr=($@)

#store choice in varibale from array
ch=${arr[0]}

#count must be grater than 0
if [ $# -eq 0 ]
then

#if count eual to 0 then display error
    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
else
         
#if count grater than 0 use case statement for choice    
    case $ch in 

        -a) #Ascending order
            for i in `seq 1 $(($#-2))` #initiate 1st loop from 1 to count-2 times for number of comparision
            do 
                  for j in `seq 1 $(($#-2))` # initiate 2nd loop from 1 to count-2 times for number of swap
                  do

#swaping for ascending order
                         if [ ${arr[$j]} -gt ${arr[$j+1]} ] #check for 1st element greater than 2nd element in array
                         then
                            temp=${arr[j]}
                            arr[$j]=${arr[$((j+1))]}
                            arr[$((j+1))]=$temp
                         fi
                   done
             done

#display output in ascending order
             echo "Ascending order of array is ${arr[@]:1:$#}"
             ;;

        -d) #Descending order
            for i in `seq 1 $(($#-2))` #initiate 1st loop from 1 to count-2 times for number of comparision
            do 
                  for j in `seq 1 $(($#-2))` #initiate 2nd loop from 1 to count-2 times for number of swap
                  do

 #swaping for descending  order
                         if [ ${arr[$j]} -lt ${arr[$j+1]} ] #check for 1st element less than 2nd element in array
                         then
                             temp=${arr[j]}
                            arr[$j]=${arr[$((j+1))]}
                            arr[$((j+1))]=$temp
                         fi
                   done
            done

#display output in descending order
            echo "Descending order of array is ${arr[@]:1:$#}"
            ;;
             
#if choice is not entered then print error
         *) 
           echo "Error : Please pass the choice."
           echo "Usage : ./sorting -a/-d 4 23 5 6 3" 
           ;;  

#close case statement      
     esac

#close condition
 fi

