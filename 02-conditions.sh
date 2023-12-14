#!/bin/bash

ID=$(id -u)


if [ $ID -ne 0 ] 
then
   echo "Error,please run with root user"
else
   echo "you are a root user"
fi   

yum install mysql -y

if [ $? -ne 0 ]
then 
   echo "Error :MYSQL INSTALLATION FAILED"
   exit 1
else
   echo "MYSQL SUCCESS"
fi      

yum install git -y

if [ $? -ne 0 ]
then 
   echo "Error :GIT INSTALLATION FAILED"
   exit 1
else
   echo "GIT SUCCESS"
fi      
