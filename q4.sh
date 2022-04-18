#!/bin/bash
read -p "Enter input" input  
IFS=',' 
read -a arr <<<"$input" 
temp=0
echo "the original array is:"
echo ${arr[*]}
echo
for ((i=0; i < ${#arr[@]}; i++))
do
    
    for((j=0; j < ${#arr[@]}-1; j++))
    do
        if [ ${arr[$((j+1))]} -lt ${arr[j]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
echo "the sorted array is"
echo ${arr[*]}
