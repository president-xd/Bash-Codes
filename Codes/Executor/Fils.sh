#!/bin/bash

echo "Executor -- by President"

echo "This tool will help you to run codes of different languages, by just selecting the language and code file location"

echo "1. C++"
echo "2. C"
echo "3. Python"
echo "4. Java"
echo "5. Go"
echo "6. Shell script"
echo "7. JavaScript"
echo "8. Ruby"
echo "9. PHP"
echo "10. Perl"
echo "11. Rust"

read -p "Enter your choice: " choice
read -p "Enter the path of the file: " path

if [ "$choice" -eq 1 ]; then
    g++ "$path" -o main && ./main
elif [ "$choice" -eq 2 ]; then
    gcc "$path" -o main && ./main
elif [ "$choice" -eq 3 ]; then
    python "$path"
elif [ "$choice" -eq 4 ]; then
    javac "$path" && java "${path%.*}"
elif [ "$choice" -eq 5 ]; then
    go run "$path"
elif [ "$choice" -eq 6 ]; then
    bash "$path"
elif [ "$choice" -eq 7 ]; then
    node "$path"
elif [ "$choice" -eq 8 ]; then
    ruby "$path"
elif [ "$choice" -eq 9 ]; then
    php "$path"
elif [ "$choice" -eq 10 ]; then
    perl "$path"
elif [ "$choice" -eq 11 ]; then
    rustc "$path" -o main && ./main
else
    echo "Invalid choice"
fi
