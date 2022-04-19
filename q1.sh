#!/bin/bash
echo "PART A"
echo
echo
awk 'NF' quotes.txt
echo
echo
echo "PART B"
echo
echo
awk 'NF' quotes.txt | awk   '{if (++dup[$0] == 1) print $0;}' quotes.txt 