#!/bin/bash
echo "enter file name"
read file
# part c
echo "PART C"
echo
words=`wc --word < $file`
echo "$words"
echo
echo