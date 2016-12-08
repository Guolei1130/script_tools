#!/bin/bash

fillter="adb"

result=`ps -l | grep ${fillter}`

var_arr=($result)

echo ${var_arr[1]}


