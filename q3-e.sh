#!/bin/bash
echo "enter file name"
read file
sed -e  's/[^A-Za-z]/ /g' $file | tr ' ' '\n' | awk 'BEGIN { FS="[^a-zA-Z]+" } {
        for (i=1; i<=NF; i++) {
            word = tolower($i)
            words[word]++
        }
    }
    END {
        for (w in words)
            if (words[w]!=1)
            {
                printf("%s - Count of repetition: [%d]\n", w, words[w]);
            }
    } '