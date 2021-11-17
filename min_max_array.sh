#!/bin/bash

: '
    write a shell script to 
    Find Maximum and Minimum 
    value from n numbers using array.
'

echo "Enter the values in array:"
read -a array

max=${array[0]}
min=${array[0]}

for i in "${array[@]}"
do
    if [ $i -gt $max ]
    then
        ((max = i))
    fi

    if [ $i -lt $min ]
    then
        ((min = i))
    fi
done

echo "max is: $max"
echo "min is: $min"

