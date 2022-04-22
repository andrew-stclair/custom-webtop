#!/bin/bash
/startpulse.sh &
/usr/bin/startplasma-x11 > /dev/null 2>&1 &
sleep 1
lookandfeeltool -a org.kde.breezedark.desktop > /dev/null 2>&1
sleep 90d
