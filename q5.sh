#!/bin/bash
read -p "enter string " inp
echo
#part a
echo "part A"
echo
re=""
len=${#inp}
for (( i=$len-1; i>=0; i-- ))
do
   re="$re${inp:$i:1}"
done
echo "$re"
echo

#part b

echo "part B"
echo
re=$(echo "$re" | tr "0-9a-z" "1-9a-z_")
echo "$re"
echo

#part c

echo "PART C"
echo
w=""
for (( i=($len-1)/2; i>=0; i-- ))
do
   w="$w${inp:$i:1}"
done
for (( i=($len+1)/2; i<=$len-1; i++ ))
do
   w="$w${inp:$i:1}"
done
echo "$w"
