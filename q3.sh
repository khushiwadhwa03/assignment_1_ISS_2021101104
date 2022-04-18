#!/bin/bash
echo "enter file name"
read file

#part a
echo "PART A"
echo
ls -nl quotes.txt | awk '{print $5}'
echo
echo
#part b
echo "PART B"
echo
lines=`wc --lines < $file`
echo "$lines"
echo
echo

# part c
echo "PART C"
echo
words=`wc --word < $file`
echo "$words"
echo
echo
#part d
echo "PART D"
echo
awk 'NF>0' $file | awk '{print "line " NR " <>" "-" NF}'
echo
echo

#part e
echo "PART E"
echo
echo
grep -o '[[:alnum:]]*' $file | sort | uniq -c | sed -E 's/[[:space:]]*([0-9]+) (.+)/\2 : \1/'