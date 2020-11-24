#!/bin/bash

a=10
b=20
c=eth0
d=eth1


if [ $a -eq $b ]
then 
	echo "$a -eq $b : a=b"
else
	echo "$a -eq $b : a!=b"
fi


if [ $a -ne $b ]

then
        echo "$a -ne $b : a=b"
else
        echo "$a -ne $b : a!=b"
fi



if [ ifconfig $c -ge ifconfig $d ]
then
	echo "$c -ge $d : c>d"
else 
	echo "$c -ge $d : c<d"
fi
