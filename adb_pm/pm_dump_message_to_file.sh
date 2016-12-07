#!/bin/bash

basedir="./dump_file/"

mkdir $basedir

if [ $# = 0 ]
then
	echo 'please input package name'
	exit
fi

pkgname=$1
adb shell pm dump $1 > "${basedir}$pkgname"

