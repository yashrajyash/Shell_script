#!/bin/bash

: '
    write a shell script to input
    a String and Find the length of
    the String and check whether this
    input String is PALINDROME or NOT.
'

read -p "Enter the string: " str

echo "length of $str is: ${#str}"

str_rev=$(echo "$str" | "rev")

if [ $str == $str_rev ]
then
    echo "PALINDROME"
else
    echo "NOT"
fi