#!/bin/bash

if [ $# = 0 ]
then
	echo "please input args,"
	exit
fi

command="adb shell am start -a "

if [ $# = 1 ]
then
	echo `${command} $1 `
fi

if [ $# = 2 ]
then
	echo `${command} $1 -d $2 `
fi
