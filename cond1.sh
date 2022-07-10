#!/bin/bash

IFS=',' read -r -a array <<< "$1"
sum=0
for i in ${array[*]}; do
         let ost=$i%2
        [ $ost == 0 ] && let "sum+=$i"
done
echo $sum

#Write your code here
