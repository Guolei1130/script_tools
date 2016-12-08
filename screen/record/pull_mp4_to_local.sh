#!/bin/bash

localpath="./mp4"

mkdir $localpath

adb pull sdcard/record.mp4 "${localpath}/"
