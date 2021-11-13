#!/bin/bash

: '
    4. write a shell script to
    input a number and
    Find sum of digits,
    count the total
    number of digits.
'

read -p "Enter the number : " num 

sum=0
count=0

while [ $num -gt 0 ]
do
    rem=`expr $num % 10`
    sum=$(($sum + $rem))
    ((num /= 10))
    ((count += 1))
done

echo "Sum of digits : $sum"
echo "Total number of digits : $count"