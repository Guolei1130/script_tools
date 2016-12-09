#!/bin/bash

filepath=`./custom.sh`

result=""

filename=""

if [ $# = 0 ]
then 
	filename="pkg_all"
	result=`adb shell dumpsys package`
else
	filename="pkg_key"
	result=`adb shell dumpsys package | grep $1`
fi

echo "$result" >> "${filepath}${filename}"
