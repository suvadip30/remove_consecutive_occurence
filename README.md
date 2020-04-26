# Introduction

- This task is to delete all consecutive duplicate occurrences of any word, which are separated by a single space. 
- Below command will create a text file with the sample input

```bash
printf "double double toil and trouble
fire burn and cauldron bubble bubble
tomorrow and tomorrow and tomorrow
creeps in this this petty pace from day toto day
to the last syllable of recorded time time
" > test.txt
```
# Code

```bash
awk '{printf "%s", $1;for (i=2; i<=NF; i++) {if ($i != $(i-1)) {printf "%s%s", OFS, $i}}print " "}' test.txt
```

# Explanation

This will compare with all the current field value to the next value and if it is not equal to the present value then it will add its value to variable
