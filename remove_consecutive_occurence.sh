#!/bin/bash

# Create a test.txt file with the sample input
printf "double double toil and trouble
fire burn and cauldron bubble bubble
tomorrow and tomorrow and tomorrow
creeps in this this petty pace from day toto day
to the last syllable of recorded time time
" > test.txt

# Remove all consecutive duplicate occurrences of any word which are separated by a single space
awk '{printf "%s", $1;for (i=2; i<=NF; i++) {if ($i != $(i-1)) {printf "%s%s", OFS, $i}}print " "}' test.txt