#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Error,please run with root user"
   exit 1
else
   echo "I am root user"
fi 


for package in $@
do
    yum installed is listed $package
  if [ $? -ne 0 ]
  then
     yum install $package -y
 # validate $?,installation of $package
  else
     echo "if the $package is already installed ... Skip"
  fi

done