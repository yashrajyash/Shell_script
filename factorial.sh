#!/bin/bash

: '
    3. write a shell script to
    find factorial of a given
    input integer number.
'

read -p "Enter the number : " num

fact=1
i=1

while [ $i -le $num ]
do
    fact=$(($fact * $i))
    ((i += 1))
done

printf "%d! = %d\n" "$num" "$fact"