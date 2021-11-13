read -p "Enter value for number1: " num1
read -p "Enter value for number2: " num2

sum=$(($num1+$num2)) # evaluate and assign to a variable
((mul=$num1*$num2)) # evaluate and assign to a variable

let "div=$(($num1/$num2))" # evaluate and assign to a variable

echo "Sum is $sum"
echo "Mul is $mul"
echo "div is $div"
echo "Minus is `expr $num1 - $num2`" # `expr $var1 + $var2` evaluate and prints the answer