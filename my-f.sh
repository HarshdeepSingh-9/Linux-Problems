#!/bin/bash
#myF
for i 
do
	if [ -f "$i" ] 
	then
		echo "$i"
	elif [ -d "$i" ]
	then
		echo "$i"\\
	else
		echo @"$i"
	fi
done
exit 0
# returns the \ for dict , @ for others than files
