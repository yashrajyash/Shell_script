#!/bin/bash

: '
    1. write a shell script
    to find maximum value from
    three input integer numbers.
'

read -p "Enter value for Number1: " num1
read -p "Enter value for Number2: " num2
read -p "Enter value for Number3: " num3

echo

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "$num1 is greater"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "$num2 is greater"
else
    echo "$num3 is greater"
fi