#!/bin/bash
#max words
for i in "$@"
do
	wc -w "$i" | cut -d" " -f1-2 >> temp
done
sort temp | tail -1
# sort temp | head -1 ---> will give the least lines
exit 0
#counts the lines of each file , Gives the max at the top 
# runs for each file argnm put in
