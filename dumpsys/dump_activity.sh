#bin/bash

filepath=`./custom.sh`

filename=""

result=""

if [ $# = 0 ]
then
	filename="activity_top_all_message"
	reult=`adb shell dumpsys activity top`
else
	filename="activity_top_activity_message"
	result=`adb shell dumpsys activity top | grep ACTIVITY `

fi

echo "${resule}" >> "${filepath}${filename}"
