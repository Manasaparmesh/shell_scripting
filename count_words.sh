#!/bin/bash

num=0

while read value
do
	word=`echo $value | wc -w`
	char=`echo $value | wc -c`
	num=`expr $num + 1`
	echo " $num:No of words=$word :No of char=$char"
done<$1
