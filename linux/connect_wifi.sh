#!/bin/bash

echo -e "Select one wifi and copy the SSID... \n"
nmcli device wifi list
read -p "Press enter when ready... "
clear

read -p "What is the SSID of the network? " networkSSID
read -p "What is the password? " networkPassword
nmcli device wifi connect $networkSSID password $networkPassword
