#!/bin/bash

# Countdown script or you can say script that gives your remaining left in future or days past
# Similary, doing this, you can learn about how to use date in various ways.
# To run sh appname.sh "date"
# sh appname.sh "10 dec 2020" 

echo "##################################"
echo "	Holiday Countdown		"
echo "##################################"

today_date=$(date +"%dth of %h %Y")

echo "Today's date is $today_date."

d=$(date +%d%h)
current_date=$(date -d "$d" +%s)
user_date=$(date -d "$1" +%s)
answer=$(( (user_date - current_date) / 86400 ))

if [ $answer -gt 0 ]
then
	echo "$answer days remaining for your Birthday or Holiday or Whatever you're searching for"
else
#	answer=$(expr "$answer" : '^-\(.*\)')		# Using expr but this inovkes external process instead of doing it in the shell
	((answer *= -1))				# changing or treating the negative to positive
	echo "$answer days have passed for anything you're searching for (Holiday, Birthday, Marriage, Visa Application, Housemove)"
fi
