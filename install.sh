#!/bin/bash
# written by metal

root_id=0
cp="/usr/bin/cp"
mv="/usr/bin/mv"
copypath="/usr/sbin"
perm="/usr/bin/chmod"

if [ $UID != $root_id ]; then
	echo "You need to be root in order to run this script."
	echo "Try: sudo -i"
	echo "Try: sudo sh install.sh"
	exit
fi

echo "Installing..."
$cp countdown.sh $copypath
$mv $copypath/countdown.sh $copypath/countdown
sleep 3
echo "Applying permission..."
$perm 755 $copypath/countdown
sleep 2
echo "Successfully Installed"
sleep 1
echo ""
echo "This a simple script which gives your countdown of remaining days.
It can be anything from current date to future date, be it your birthday or your upcoming holiday."
echo ""
echo "Try:countdown ddmmyyy or countdown ddmonthyear or just countdown ddmonth
For example: 
$ countdown "give your date"

$ countdown "01 Jan 2020"
$ countdown 01012020
$ countdown 01011900
$ countdown 0101
$ countdown 01Jan
"
echo ""
echo ""
