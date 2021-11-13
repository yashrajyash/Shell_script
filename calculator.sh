#!/bin/bash

: '
    7. Write a shell script to make a menu driven calculator
    with float(real) values by performing following operations:
    1.Addition 2. Subtraction 3. Multiplication
    4. Division 5. Remainder 6. square root
    7.power 0.To Exit
'

while [ true ]
do 
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Remainder"
    echo "6. Square Root"
    echo "7. Power"
    echo "0. Exit"

    echo

    read -p "Select choice : " choice

    if [ $choice -ne 0 ]
    then
        if [ $choice -ne 6 ]
        then
            echo -n "Enter num1 : "
            read num1
            echo -n "Enter num2 : "
            read num2
        else
            echo -n "Enter num : "
            read num
        fi
    fi

    case $choice in
        1)
        res=$(echo "scale=2;($num1 + $num2)" |bc)
        echo "$num1 + $num2 = $res"
        ;;
        2)
        res=$(echo "scale=2;($num1 - $num2)" |bc)
        echo "$num1 - $num2 = $res"
        ;;
        3)
        res=$(echo "scale=2;($num1 * $num2)" |bc)
        echo "$num1 x $num2 = $res"
        ;;
        4)
        res=$(echo "scale=2;($num1 / $num2)" |bc)
        echo "$num1 / $num2 = $res"
        ;;
        5)
        res=`expr $num1 % $num2` 
        echo "$num1 % $num2 = $res"
        ;;
        6)
        res=`echo "scale=2; sqrt($num)" | bc`
        echo "sqrt($num) = $res"
        ;;
        7)
        res=$(($num1 ** $num2))
        echo "$num1 ^ $num2 = $res"
        ;;
        0)
        exit
        ;;
        *)
        echo "No matching choice found"
        ;;
    esac
    echo
done