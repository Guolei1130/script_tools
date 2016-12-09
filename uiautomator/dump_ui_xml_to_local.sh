#!/bin/bash

adb shell uiautomator dump

localpath="./uixml"

mkdir $localpath

adb pull sdcard/window_dump.xml "${localpath}/"


