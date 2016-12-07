#!/bin/bash

if [ $# = 0 ]
then 
	echo 'please input apk file path(sdcard)'
	exit
fi

apkpath=$1

pm install $apkpath


