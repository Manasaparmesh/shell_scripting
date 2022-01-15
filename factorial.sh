#!/bin/bash

set -x

echo "Enter the number to find factorial"
read val
num=$val

fact=1

while [ $num -gt 1 ];
do
	fact=`expr $fact \* $num`
	num=`expr $num - 1`
done
echo "factorial of $val is $fact" 
