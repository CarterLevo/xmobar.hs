#!/bin/bash

wifiStatus=$(nmcli radio wifi)

if [[ "$wifiStatus" == "enabled" ]]; then
  nmcli radio wifi off
else
  nmcli radio wifi on
fi
