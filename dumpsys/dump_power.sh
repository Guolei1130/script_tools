#!/bin/bash

filepath=`./custom.sh`

result=`adb shell dumpsys power`

filename="power_state"

echo "${result}" >> "${filepath}${filename}"
