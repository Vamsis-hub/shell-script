#!/bin/bash

ID=$(id -u)


if [ $ID -ne 0 ] 
then
   echo "Error,please run with root user"
   exit 1
else
   echo "you are a root user"
fi   

yum install mysql -y