#1/bin/bash

space=`df -kh . | awk -F " " '{print $(NF-1)}' | tail -1 | sed "s/%//g"`

if [ $space -gt 90 ];
then
	echo "space is more than 90%" | mail -s "action required" -c "xyz@gmail.com" "manasa.paramesh@gmail.com"
else
	echo " no action needed space is less than 90%"
fi

