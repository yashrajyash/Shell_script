#!/bin/bash

: '
    6. write a shell script to 
    check whether a input number is PRIME or NOT.
'

read -p "Enter the number : " num 

for ((i=2; i<=num/2; i++))
do
    if [ $((num % i)) -eq 0 ]
    then
        echo "Not Prime"
        exit
    fi
done

echo "Prime"
