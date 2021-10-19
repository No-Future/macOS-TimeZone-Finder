#!/bin/bash

currentTimeZone=$(sudo systemsetup -gettimezone | awk '{print $3}')
echo ""
echo ""
echo "The current time zone is: $currentTimeZone"

curlTimeZone=$(curl -s http://ip-api.com/line?fields=timezone)
echo ""
echo "The time zone retrieved from the curl is: $curlTimeZone"

newTimeZone=$(sudo systemsetup -settimezone $curlTimeZone)
echo ""
echo "The new time zone is: $newTimeZone"


# For available Time Zone: sudo systemsetup -listtimezones
