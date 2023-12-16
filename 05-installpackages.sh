#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIME=$(date +%F-%H-%M-%S)

Logfile="/tmp/$0-$TIME.log"

validate(){ 
  if [ $1 -ne 0 ] 
  then
       echo -e "$2 ... $R failed $N"
       exit 1
  else
       echo -e "$2...  $G success $N" 
  fi     

}

if [ $ID -ne 0 ]
then
   echo -e "$R Error,please run with root user $N"  &>> $Logfile
   exit 1
else
   echo "I am root user" &>> $Logfile
fi 


for package in $@
do
    yum installed is listed $package &>> $Logfile
  if [ $? -ne 0 ]
  then
     yum install $package -y  &>> $Logfile
     validate $?,installation of $package
  else
     echo "if the $package is already installed ... Skip"
  fi

done