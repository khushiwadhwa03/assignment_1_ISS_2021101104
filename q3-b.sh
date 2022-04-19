#!/bin/bash
echo "enter file name"
read file

#part b
echo "PART B"
echo
lines=`wc --lines < $file`
echo "$lines"
echo
echo