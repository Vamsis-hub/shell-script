#!/bin/bash


ID=$(id -u)

TIME=$(date +%F-%H-%M-%S)

Logfile="/tmp/$0-$TIME.log"

Variable() {   
      if [ $1 -ne 0 ]
then 
   echo -e "$2 Installation \e[31m FAILED \e[0m"
else
   echo -e "$2 Installation \e[32m SUCESS \e[0m"
fi   


}

if [ $ID -ne 0 ] 
then
   echo -e "\e[33m Error \e[0m,please run with root user"
   exit 1
else
   echo "you are a root user"
fi   

yum install mysqll -y &>> $Logfile
 
Variable $? Mysql

yum install git -y &>> $Logfile

Variable $? Git
