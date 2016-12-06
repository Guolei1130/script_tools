#!/bin/bash

git pull

gitmsg="update_shell_tools"

if [ "$#" != 0 ]
then
	gitmsg=$1
fi

git add ./

git commit -m ${gitmsg}

git push

