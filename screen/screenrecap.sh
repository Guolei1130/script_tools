#!/bin/bash

localPath="./screenrecap"

mkdir ${localPath}

adb shell screencap -p /sdcard/screen.png

adb pull /sdcard/screen.png "${localPath}/"


