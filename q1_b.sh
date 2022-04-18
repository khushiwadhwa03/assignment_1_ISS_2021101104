#!/bin/bash
awk 'NF' | awk   '{if (++dup[$0] == 1) print $0;}' quotes.txt  