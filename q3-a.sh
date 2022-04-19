#!/bin/bash
echo "enter file name"
read file

#part a
echo "PART A"
echo
ls -nl quotes.txt | awk '{print $5}'
echo
echo