#!/bin/bash

ID=$(id -u)

Variable() {   
      if [ $1 -ne 0 ]
then 
   echo "$2 Installation FAILED"
else
   echo "$2 Installation SUCESS"
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
 
Variable $? Mysql

yum install git -y

Variable $? Git

   
