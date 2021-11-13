#!/bin/bash

: '
    This program
    shows how to take
    inputs
'
echo "Enter your name : "
read name
echo "Good Morning $name!"

echo "Enter your first name and last name: "
read firstName lastName
echo "Your first name is: $firstName & Your last name is: $lastName"

: '
    Reading Multiple
    inputs using array
'

echo "Enter what you want: "
read -a word
echo "Word1 = ${word[0]} & word2 = ${word[1]}"
