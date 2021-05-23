#!/bin/bash

OLDIFS=$IFS
IFS=$','
space=" "
space2="　"
while read s1 s2 s3
do
	c=${#s1}
	while test $c -lt 20
	do
		s1="$s1$space"
		c=`expr $c + 1`
	done
	
	c=${#s2}
	while test $c -lt 20
	do
		s2="$s2$space2"
		c=`expr $c + 1`
	done
	
	c=${#s3}
	while test $c -lt 20
	do
		s3="$s3$space"
		c=`expr $c + 1`
	done
	
	echo $s1","$s2","$s3
done < ../test/Addspacetest.csv

IFS=$OLDIFS
