#!/bin/bash

: '
    5. write a shell script to 
    input a number and 
    Find reverse of this number
    and check whether
    this input number is PALINDROME or NOT.
'

read -p "Enter the number : " num 

cpyNum=$num
rev=0

while [ $num -gt 0 ]
do
    ((rem = num % 10))
    ((rev = rev*10 + rem))
    ((num /= 10))
done

echo "Reverse is : $rev"

if [ $cpyNum -eq $rev ]
then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi