#!/bin/sh

file=${1:? "$0 requires \"file\" as first argument"}
correct_ext="sch"

# depends on dirname and readlink, might not be available on your system
path="$(dirname $(readlink -f $file))"
basename="$(basename ${file[@]%.*})"
ext="${file[@]#*.}"

if [ "$ext" != "$correct_ext" ]; then
	echo "Extension of file should be \"$correct_ext\", not \"$ext\" "
	exit -1
fi

new_ext="net"

echo "cd $path"
cd $path

echo "gnetlist -g spice-sdb -o $basename.$new_ext $basename.$correct_ext"
gnetlist -g spice-sdb -o $basename.$new_ext $basename.$correct_ext
