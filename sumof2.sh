#1/bin/bash

sum=0
mul=1

sum=`expr $1 + $2`
mul=`expr $1 \* $2`
echo " sum of $1 & $2 is $sum"
echo " Mul of $1 & $2 is $mul"
