#!/bin/bash

ID=$(id -u)

Variable() {   
      if [ $? -ne 0 ]
then 
   echo "MY SQL FAILED"
else
   echo "MYSQL SUCESS"
fi   


}

if [ $ID -ne 0 ] 
then
   echo "Error,please run with root user"
   exit 1
else
   echo "you are a root user"
fi   

yum install mysql -y
 
Variable

yum install git -y

Variable

   
