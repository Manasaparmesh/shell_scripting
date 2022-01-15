#!/bin/bash

total=`ls | wc -l`
delete=`expr $total - 20`

if [ $delete -gt 0 ];
then
	ls -rt | head -$delete | xargs rm
fi
