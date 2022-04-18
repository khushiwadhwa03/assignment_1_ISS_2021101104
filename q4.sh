#!/bin/bash
echo -n "no of elements"
read n
echo "Enter elements :"
let i=0
while [ $i -lt $n ]
do
    read a[$i]
    i=`expr $i + 1`
done
temp=0
echo "the original array is:"
echo ${a[*]}
echo
for ((i=0; i < $n; i++))
do
    
    for((j=0; j < $n-1; j++))
    do
        if [ ${a[$((j+1))]} -lt ${a[j]} ]
        then
            temp=${a[j]}
            a[$j]=${a[$((j+1))]}  
            a[$((j+1))]=$temp
        fi
    done
done
echo "the sorted array is"
echo ${a[*]}