#!/bin/bash
str=$1
num=${#str}
for (( i = 0; i < $num; i++ ))
        {
        if [[ ${str:$i:1} == "C" ]]; then
                let "temp = ${str:0:$i} + 273"
                echo $temp"K"
                break
        elif [[ ${str:$i:1} == "K" ]]; then
                let "temp = ${str:0:$i} - 273"
                echo $temp"C"
                break
        fi
}
