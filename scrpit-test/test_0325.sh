#!/bin/bash

:<<word
int=1
while (($int <=5))
do 
	echo $int
	let "int++"
done
word


COUNT=${1:-23}
echo = $count


