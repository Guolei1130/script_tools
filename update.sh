#!/bin/bash


msg="update shell tools"

if [ "$#" != 0 ]
then
	msg=$1
	echo 'fuck'
fi


git pull

git add ./

git commit -m $msg

git push

