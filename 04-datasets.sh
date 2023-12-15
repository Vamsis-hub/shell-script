#!/bin/bash

Number1=$1
Number2=$2

SUM=$(($Number1+$Number2))

echo "total=$SUM"

echo "how many args=$#"
echo "all args passed=$@"
echo "scriptname=$0"