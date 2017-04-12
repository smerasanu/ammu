#!/bin/bash
echo "enter a string"
read str
echo "enter the string to be searched"
read s
l=`echo $str |wc -w`
i=1
f=0
while [ $i -le $l ]
do
a=`echo $str -tr -s " "|cut -f  $i -d " "`
if [ $a = $s ]
then
echo "position of substring $i"
f=1
fi
i=$(($i+1))
done
if [ $f -eq 0 ]
then
echo "Word does not exist"
fi
