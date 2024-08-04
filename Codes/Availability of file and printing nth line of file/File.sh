#!/bin/bash

echo "Hello, Hope you are doing well."

read -p "Enter the file path: " file_path

if [ -f "$file_path" ]; then
    echo "File found successfully"
    echo "Opening the file, please wait for 5 seconds........"
    sleep 5
else
    echo "File cannot be found. Please enter the correct path for the file."
    echo "Exiting......"
    sleep 5
    exit 1
fi

sed -n "10p" "$file_path"
