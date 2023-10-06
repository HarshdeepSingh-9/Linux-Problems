#!/bin/bash
#odd-even check
typeset -i val=$1
if [ "$2" ] ;
then
	echo "Please Only Use 1 Value at one Time"
fi

if [ $((val % 2)) -eq 0 ] ; 
then
	echo "Yes '$1' is even"
else
	echo "'$1' is odd"
fi
exit 0
