#!/bin/bash

Dis=`acpi | cut -f3 -d" "`
if [ "$Dis" = "Discharging," ] ; then
    pm-suspend
fi
