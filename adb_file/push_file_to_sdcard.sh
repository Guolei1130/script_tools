#!/bin/bash

topath="sdcard/"

if [ $# = 0 ]
then
	echo "please input file path"
	exit
fi

filepath=$1

if [ $# = 2 ]
then
	topath=$2
fi

adb push ${filepath} ${topath}
