#!/bin/bash

filepath=`./custom.sh`

result=""

filename=""

if [ $# = 0 ]
then
	filename="meminfo_all"
	result=`adb shell dumpsys meminfo`
else
	filename="memoinfo_pkg"
	result=`adb shell dumpsys meminfo $1`
fi

#echo "hello" >> "${filepath}${filename}"
echo "$result" >> "${filepath}${filename}"
