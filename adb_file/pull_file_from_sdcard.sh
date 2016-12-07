#!/bin/bash

basedir="pull_dir"

mkdir ${basedir}

topath="./${basedir}/"

if [ $# = 0 ]
then
	echo 'please input fromfile'
	exit
fi

frompath=$1

adb pull $1 ${topath}
