#!/bin/bash

<<doc
Name          : Sushant Patil
Date          : 26/12/2022
Description   : command line test(Project)
doc

#displays the choices to user
echo "1.sign up"
echo "2.sign in"
echo "3.exit"
read -p "enter your choice: " ch            #reading choice from user
case $ch in                                 #using case statement for choice
      1)
          arr=(`cat user.csv`)              #stores content of user.csv file in array          
          a=y
          while [ $a = y ]                  #while loop for infinite run until user stop it
          do
            read -p "enter user name:" name #reading name feom user
            b=x
            for i in ${arr[@]}              #loop for taking array element 1 by 1
            do
              if [ $name = $i ]             #comparing crrent username with already username   
                  then
                     a=y                    #if username is already present read usernam again
                     b=v
              fi
            done
          if [ $b = x ]
          then 
              a=n                           #if username is not present stop the loop
          else
              echo "Error:username already present" #printing error msg if username already present
              a=y                                   #reading username again
          fi
      done                                   #close while loop  
      a=y

      z=y
      while [ $z = y ]                         #while loop for infinite run until user stop it
      do
          read -sp "enter password:" p         #reading password from user
          echo
          read -sp "enter conformation password:" cp  #reading confirmation password
          if [ $p = $cp ]                             #comapring password and confirmation password
          then
              echo $name >> user.csv                  #if password and confirmation password is match then store username i user file and password in passwd file
              echo $p >> passwd.csv
              echo
              echo "signup successfully.Please do sign in to take test" #if password match then signup is completed
              z=n                                                       #break loop
          else 
              echo "Error:password does not match"                     #if password not match then read password again
              z=y
          fi
      done                                                 #close loop
            ;;

      2)
         uarr=(`cat user.csv`)                       #stores content of user.csv array in array
         parr=(`cat passwd.csv`)                     #stores content of passwd.csv file in array
         a=y
         b=x
         while [ $a = y ]                            
         do
             read -p "enter user name:" name         #reading username from user
             for i in `seq 0 $((${#uarr[@]}-1))`     #taking array index
             do
                 if [ $name = ${uarr[$i]} ]          #comparing username with user.csv file
                 then
                     b=v
                     index=$i                        #if match then store index in variable
                     a=n
                
                 read -sp "enter password:" p        #reading password from user
                      if [ $p = ${parr[$index]} ]    #comparing password with passwd.csv file
                      then
                          b=v
                          echo
                          echo "sign in successfully"   #if username and password is match then signin successfully
                      else
                          b=x                    
                          a=y                           #if not match then read username and passwd again
                      fi
                 fi
              done
              if [ $b = v ]
              then
                   break                                #if username and paswd match break the loop
              else
                  echo
                  echo "Error:username and password does not match"  #printing error if username and passwd does not match
              fi
          done

         echo
         echo "Enter your option(yes/no) to take Test"               #printing msg to user
         echo "yes.Take a test"
         echo "no.Exit"
         
         read -p "enter your choice: " ch                            #using case statement for choice
         case $ch in
             yes)
                 echo "                                                                   All the Best $name                                                                                       "
                 len=`cat questionbank.txt | wc -l`                 #calculating total number of lines in questionbank file
                 for i in `seq 5 5 $len`                            #loop for taking questions
                 do
                     echo
                     echo
                     head -$i questionbank.txt | tail -5            #printing questions one by one
                     for i in `seq 10 -1 1`                         #time given after question displayed
                     do
                         echo -n -e "\rEnter your option: $i"     
                         read -t 1 op                               #reading option from user
                         if [ -n "$op" ]                            #option must be nonzero string 
                         then
                             break                                  #if answer is entered then break
                         else
                             op="e"                                 #if user has not entered any option stores default option
                         fi
                     done
                     echo $op >> userans.txt                        #storing options in user answer file
                 done

                 echo
                 echo
                 echo  "<---------------------------------------------------------------------[Result]------------------------------------------------------------------------------------------------>"
                 echo
                  

                 #to display result

                 #initilization
                 total=0
                 char=0
                 user_ans=(`cat userans.txt`)                     #storing content of usr answer file in array
                 correct_ans=(`cat corrans.txt`)                  #storing content of correct answer in array
 
                 for i in `seq 5 5 $len`                          #loop for to take 5 lines from questionbank file
                 do
                     head -$i questionbank.txt | tail -5          #displaing questions 
                     length=`cat questionbank.txt|wc -l`           
                     total_que=$(($length/5))                        #calculating total number of questions
                     if [ $char -le $total_que ]                  
                     then
 
                          if [ ${user_ans[$char]} = ${correct_ans[$char]} ]  #compring user ans and correct ans
                            then
                                echo "correct answer"                        #if macth then displaing msg as correct answer 
                                echo
                                total=$(($total+1))                          #increament toatl by 1
                         elif [ ${user_ans[$char]} = e ]                     #if user not entered any option then print time out
                         then
                            echo "time out"
                         else
                            echo "option-${user_ans[$char]} is wrong answer"       #displaing wrong answer with msg
                            echo "correct answer is option-${correct_ans[$char]}"  #printing correct ans
                            echo
                         fi
                     fi
                     char=$(($char+1))                        #increment char by 1
                 done
                 echo
                 echo "total correct answer=$total/$total_que" #printing total correct answers
                 echo
                 echo
                 sed -i "d" userans.txt                        #after test complete delete content of user answer file
                 echo "                                                                      THANK YOU FOR ATTENDING                                                                                  "

                 exit                                         #terminate script                          
                 ;;

             no)
                 exit                                         #terminate script
                 ;;

             *)
                 echo "Invalid option:please enter valid option"  #printing error if user enterd invalid option
         esac
         ;;
            
      3) 
            exit                               #terminate script
            ;;

      *)
          echo "Invalid Choice:Please enter correct choice"  #printing error if user enterd invalid option
    esac
