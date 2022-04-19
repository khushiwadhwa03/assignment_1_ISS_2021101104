#!/bin/bash
echo "enter file name"
read file
#part d
echo "PART D"
echo
awk 'NF>0' $file | awk '{print "line " NR " <>" "-" NF}'
echo
echo