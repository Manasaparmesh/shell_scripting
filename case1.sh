#!/bin/bash


var=`date | awk -F " " '{print $1}'`
case $var in
	Mon) echo "This is Monday"
		;;
	Tue) echo "This is Tuesday"
		;;
	Wed) echo "This is Wednesday"
		;;
	Thu|Fri) echo "This is Thursday or Friday"
		;;
	*) echo "Entered string doesnot match"
		;;
		esac

