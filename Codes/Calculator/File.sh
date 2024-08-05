#!/bin/bash

echo "Calculator -- by President"

echo "1. For Addition"
echo "2. For Subtraction"
echo "3. For Multiplication"
echo "4. For Division"

read -p "Enter your Choice: " choice

read -p "Enter first number: " number1
read -p "Enter second number: " number2

if [[ "$choice" == "1" ]]; then
    result=$((number1 + number2))
    echo "Result: $number1 + $number2 = $result"
elif [[ "$choice" == "2" ]]; then
    result=$((number1 - number2))
    echo "Result: $number1 - $number2 = $result"
elif [[ "$choice" == "3" ]]; then
    result=$((number1 * number2))
    echo "Result: $number1 * $number2 = $result"
elif [[ "$choice" == "4" ]]; then
    if [[ "$number2" -eq 0 ]]; then
        echo "Error: Division by zero"
    else
        result=$((number1 / number2))
        echo "Result: $number1 / $number2 = $result"
    fi
else
    echo "Invalid choice"
fi
