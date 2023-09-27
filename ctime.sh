#!/bin/bash
# List in alphabetical order all files in the current directory that have been edited exactly 3 days ago.
find . -type f -ctime 3 | sort | uniq
