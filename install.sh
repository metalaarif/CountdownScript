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
echo "This a simple script which gives your countdown of remaining days."
echo "It can be anything from current date to future date, be it your birthday or your upcoming holiday."
echo ""
echo "Try:countdown ddmmyyy or countdown ddmonthyear or just countdown ddmonth"
echo "For example: countdown 0101 or countdown 01Jan"

