#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 18/12/2022
Description   : script to replace 20% lines in a C file randomly and replace it with the pattern
Sample Input  :
Sample Output :
doc

if [ $# -eq 0 ]                                                  #check cla is passed or not,if not passed display error
then
   echo "Error : Please pass the file name through command line." #print error msg
  else
      if [ -f $1 ]                                               #check file present or not
      then
          if [ -s $1 ]                                           #check file has content or not
          then
             
              total_lines=`cat $1 | wc -l`                       #to know total number of lines
   
             if [ $total_lines -ge 5 ]                           #check weather file having lines are more than 5 or not
             then
                 echo "Before replacing"                            
                 cat $1                                             #diplays file content before replacing
                 per_line=$(($total_lines/5))                    #calculate 20% of total lines
                 
                 for i in `seq 1 $per_line`                      #run loop over 20% number of lines in given file
                 do
                    line_no=`shuf -i 1-$total_lines -n1`         #shuf comand is used to take random numbr for line slection
                done
                    sed -i "$line_no s/.*/<---deleted--->/" $1   #use sed cmd to replace random line with deleted line
                 echo "After replacing"                         
                 cat $1                                          #displays file content after replacing
             else
                 echo "Error:$1 file is having only $total_lines lines.file should have atleast 5 line" #displays error msg
               fi
             else
             echo "Error : $1 is empty file. So can’t replace the string." #print error msg
         fi
     else
         echo "Error : $1 No such a file."                                 #print error msg
     fi
 fi

