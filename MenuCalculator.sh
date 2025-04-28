#!/bin/bash

while true; do
    echo "Calculator Menu:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    
    read -p "Enter your choice (1-5): " choice
    
    case $choice in
        1)
            read -p "Enter two numbers: " num1 num2
            echo "Result: $(($num1 + $num2))"
            ;;
        2)
            read -p "Enter two numbers: " num1 num2
            echo "Result: $(($num1 - $num2))"
            ;;
        3)
            read -p "Enter two numbers: " num1 num2
            echo "Result: $(($num1 * $num2))"
            ;;
        4)
            read -p "Enter two numbers: " num1 num2
            if [ $num2 -eq 0 ]; then
                echo "Cannot divide by zero"
            else
                echo "Result: $(echo "scale=2; $num1 / $num2" | bc)"
            fi
            ;;
        5)
            echo "Exiting calculator"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done