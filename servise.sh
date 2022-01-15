#!/bin/bash


services="apache jenkins sshd"
for i in $services
do
	out=`ps -ef | grep $i |grep -v "grep"`
	result=`echo $out | grep $i`

	if [ "$result" != "" ];
	then
		echo "$i service is running"
	else
		echo "$i service is not running"
		echo "Trying to restsrt $i service"
		echo "Action needed" | mail -s "$i is not running" -c manasa.paramesh@gmail.com
		sudo service $i restart
	fi
done

