#!/bin/bash

: '
    9. write a shell script to 
    check whether a input number is
    ARMSTRONG or NOT.
'

read -p "Enter the number : " num 

cpyNum=$num
newNum=0

while [ $num -gt 0 ]
do
    ((rem = num % 10))
    ((newNum += rem ** 3))
    ((num /= 10))
done

if [ $newNum -eq $cpyNum ]
then
    echo "Armstrong number"
else
    echo "Not a armstrong number"
fi