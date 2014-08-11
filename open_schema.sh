#!/bin/sh

file=${1:? "$0 requires \"file\" as first argument"}
correct_ext="sch"
ext="${file[@]#*.}"

if [ "$ext" != "$correct_ext" ]; then
	echo "Extension of file should be \"$correct_ext\", not \"$ext\" "
	exit -1
fi

gschem $file
