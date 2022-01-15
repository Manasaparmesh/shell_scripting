#!/bin/bash

factorial()
{
	fact=1
	num=$i
	var=$i
	while [ $num -ge 1 ];
	do
		fact=`expr $fact \* $num`
		num=`expr $num - 1`
	done
	echo "factorial of $var is $fact"
}

add()
{
	sum=0
	add=$i
	var1=$i
	while [ $add -gt 0 ];
	do
		sum=`expr $sum + $add`
		add=`expr $add - 1`
	done
	echo "sum of $var1 is $sum"
}

for i in $*
do
	factorial $i
	add $i
done

