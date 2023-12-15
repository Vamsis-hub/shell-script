#!/bin/bash


ID=$(id -u)

TIME=$(date +%F-%H-%M-%S)

Logfile="/tmp/$0-$TIME.log"

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

yum install mysql -y &>> $Logfile
 
Variable $? Mysql

yum install git -y &>> $Logfile

Variable $? Git
