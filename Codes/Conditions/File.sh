#!/bin/bash

read -p "Enter your name : " name
read -p "Enter your age : " age
read -p "Enter your university name : " university_name

if [ "$age" -eq 10 ]; then
    echo "You are very young now"
else
    echo "Grown man"
fi

echo "Good bye Man"
