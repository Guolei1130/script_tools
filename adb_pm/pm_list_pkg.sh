#!/bin/bash

key="com"

if [ $# = 1 ]
then
	key=$1
fi

adb shell pm list package | grep $key


