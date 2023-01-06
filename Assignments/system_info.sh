#!/bin/bash

<<doc
Name             : Sushant Patil
Date             : 09/12/2022
Description      : script to print system information using commands
sample input     : whoami
sample oput      : emertxe
doc

op=y
#create infinite loop
while [ $op = y ] 
do

#display choices to user
echo "1. Currently logged users" 
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information."
echo "10. Memory Informations"
echo "11. File system information."
echo "12. Currently running process."


read -p "enter your choice: " ch                        #read  choice  from user
    case $ch in                                          #to slect choice,use case statement
        1)
            echo -n "Currently logged user is " ; whoami  #displays currently looged user
            ;;

        2) 
            echo "Your shell directory is $SHELL"  #dispays shell directory
            ;;

        3)
            echo "Home directory is $HOME" #displays home directory
            ;;

        4)
            echo -n "OS name & version is " ; uname -sr #displays os name and version
            ;;
        
        5)
            echo -n "Current working directory is " ; pwd #displays current working directory
            ;;
        
        6)
            echo -n "Number of users logged in is " ; who -q #displays number of user logged in
            ;;
        
        7)
            echo  "Show all available shells in your system " ; cat /etc/shells #displays available shells in system
            ;;
        
        8)
            echo "Hard disk information is " ; hwinfo  # displays hardisk information
            ;;
        
        9)
            echo "CPU information is " ; cat /proc/cpuinfo #displays cpu information
            ;;
        
        10)
            echo "Memory Informations is " ; cat /proc/meminfo #displays memory information
            ;;
        
        11)
            echo "File system information is " ; df -h #displays file system information
            ;;
        
        12)
            echo "Currently running process is " ; ps #dislays currently running process
            ;;
        
        *)
            echo "Error : Invalid option, please enter valid option" #display error if invalid choice is entered
            ;;
     esac #close case statement

     read -p "Do you want to continue(y/n) ? " op #read option from user that,do you want to continue or exit
 done  #terminate loop
