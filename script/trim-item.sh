#!/bin/bash

#cat ../test/space.csv | sed -e 's/[ 　][ 　]*//g' > ../test/remove-space.csv

cat ../test/space.csv | awk 'BEGIN{ FS=",";OFS=","}{gsub("^[ 　]" , "",$1);gsub("[ 　]$" , "",$1);gsub("^[ 　]" , "",$2);gsub("[ 　]$" , "",$2);gsub("^[ 　]" , "",$3);gsub("[ 　]$" , "",$3);print $1,$2,$3}'> ../test/remove-sapceawk.csv
