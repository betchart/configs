#!/bin/bash

Dis=`acpi | cut -f3 -d" "`
echo $Dis > /lid_test.txt
if [ $Dis = "Discharging," ] ; then
    /usr/sbin/pm-suspend
fi
