#!/bin/bash

cat ../test/space.csv | sed -e 's/[ 　][ 　]*//g' > ../test/remove-space.csv

#No remove space between letters
cat ../test/space.csv | sed -e 's/,[ 　][ 　]*/, /g'  -e 's/[ 　][ 　]*,/ ,/g' | awk 'BEGIN{ FS=",";OFS=","}{sub("^[ ][ ]*" , "",$1);sub("[ ][ ]*$" , "",$1);sub("^[ ][ ]*" , "",$2);sub("[ ][ ]*$" , "",$2);sub("^[ ][ ]*" , "",$3);sub("[ ][ ]*$" , "",$3);print}'  > ../test/remove-spaceawk.csv
