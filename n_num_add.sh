#!/bin/bash


#num=" 2 5 3 6 1"
sum=0

for i in $*
do
	sum=`expr $sum + $i`
done

echo "Sum of $* numbers is $sum"

