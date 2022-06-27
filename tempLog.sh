#!/bin/bash

while :
do

	#get cpu temp value
	cpuTemp=$(</sys/class/thermal/thermal_zone0/temp)
	#convert figure to celsius
	cpuCelsius=$((cpuTemp/1000))
	#get the date and time
	varDate=$(date)
	#concatenate variables for logging
	logOutput="${cpuCelsius} Degrees Celsius, ${varDate}"

	echo $logOutput
	echo $logOutput >> cpuTemp.csv
	#sleep for 60 minutes so we log every hour
	sleep 60m

done
