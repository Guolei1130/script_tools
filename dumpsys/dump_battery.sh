#!/bin/bash

filepath=`./custom.sh`

result=`adb shell dumpsys battery`

echo "$result" >> "${filepath}battery"
 



