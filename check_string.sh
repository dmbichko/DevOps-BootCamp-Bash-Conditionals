#!/bin/bash
str=$1
num=${#str}
numbers=0
symbols=0
letters=0
str_symbol="!@#$%^&()_+"
for (( i = 0; i < $num; i++ ))
{
        if [[ ${str:$i:1} == [0-9] ]]; then
                let "numbers = numbers + 1"
        elif [[ ${str:$i:1} == [A-Za-z] ]]; then
                let "letters = letters + 1"
        elif [[ "$str_symbol" == *"${str:$i:1}"* ]]; then
                let "symbols = symbols + 1"
        fi
}
echo "Numbers: "$numbers "Symbols: "$symbols "Letters: "$letters
