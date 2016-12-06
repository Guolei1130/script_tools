#!/bin/bash

if [ $# = 0 ]
then
	echo 'please input apk path'
	exit
fi

apkpath=$1

apkfile="${apkpath}"

if [ -r $apkfile ]
then
	echo "file can read"
else
	echo "file can't read"
	exit
fi

isApk=$(echo $apkPath | grep .apk)

if [ -z ${isApk} ]
then
	keytool -list -printcert -jarfile ${apkfile}
else
	echo "file is not apk"
fi

exit

#only md5,no test

echo "##########################################"
md5line=$(keytool -list -printcert -jarfile ${apkfile} | grep MD5)
echo $md5line | sed 's/://g' | tr '[:upper:]' '[:lower:]'
echo "#########################################"
