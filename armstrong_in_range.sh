#!/bin/bash

: '
    Write a shell script to display
    all ARMSTRONG numbers from 150 to 9500.
'

for ((i=150; i<=9500; i++))
do
    num_orignal=$i
    num_cpy=$num_orignal
    new_num=0

    while [ $num_cpy -gt 0 ]
    do
        ((rem = num_cpy % 10))
        ((new_num += rem ** 3))
        ((num_cpy /= 10))
    done

    if [ $num_orignal -eq $new_num ]
    then
        echo $num_orignal
    fi
done