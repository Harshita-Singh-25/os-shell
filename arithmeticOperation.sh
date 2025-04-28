#!/bin/bash

echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Addition: $(($num1 + $num2))"
echo "Subtraction: $(($num1 - $num2))"
echo "Multiplication: $(($num1 * $num2))"

if [ $num2 -eq 0 ]; then
    echo "Division by zero is not allowed"
else
    echo "Division: $(echo "scale=2; $num1 / $num2" | bc)"
fi

echo "Modulus: $(($num1 % $num2))"