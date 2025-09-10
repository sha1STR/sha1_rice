#!/usr/bin/bash

connection_status=$(nmcli -t -f WIFI g)

if [[ $connection_status = "enabled" ]];
then
  nmcli radio all off
else
  nmcli radio all on
fi
