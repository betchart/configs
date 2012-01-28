#!/bin/bash

state=`grep status /proc/acpi/ibm/bluetooth | cut -f2 -d":"`
if [ $state = "enabled" ] 
then
    /usr/bin/mpc enable 1
    /usr/bin/mpc disable 2
    /etc/init.d/bluetooth stop
    killall bluetoothd
    echo "disable" > /proc/acpi/ibm/bluetooth
else
    echo "enable" > /proc/acpi/ibm/bluetooth
    /etc/init.d/bluetooth start
    /usr/bin/mpc pause
    /usr/bin/mpc enable 2
    /usr/bin/mpc disable 1
    sleep 2
    /usr/bin/mpc play
fi
