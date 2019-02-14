#!/usr/bin/python3

# Countdown script or you can say script that gives your remaining left in future or days past
# Similary, doing this, you can learn about how to use date in various ways in Python3
from datetime import datetime

print("###############################")
print("         Countdown")
print("###############################")

current_time = datetime.now()
print("Today's date is {}th of {} {}".format(current_time.day, current_time.month, current_time.year))