#!/bin/bash
chmod +x /config/.config/autostart-scripts/*.sh
/startpulse.sh &
/usr/bin/startplasma-x11 > /dev/null 2>&1
