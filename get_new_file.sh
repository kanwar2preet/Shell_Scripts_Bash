#! /bin/bash
# Purpose : Comparing two files to check which one is new.

FILE1="test1"
FILE2="test2"
if [ $FILE1  -nt $FILE2  ]
then
	echo $FILE1 is newer
else
	echo $FILE2 is newer
fi




#END
