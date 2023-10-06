#!/bin/bash
#count_who
who | cut -c1-8 | sort > temp1
typeset -i count=0
while read -r line
do
	count=0
	if [ "`grep -e "$line" temp1`" ]
	then
		count+=`grep -e "$line" temp1 | wc -l`
	fi
	echo "$count" "$line" >> temp2
done < temp1
cat temp2 | uniq
rm temp2
rm temp1
