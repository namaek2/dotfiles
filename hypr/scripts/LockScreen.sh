#!/bin/bash

#sleep 0.1
#hyprctl keyword cursor:inactive_timeout 1
pidof hyprlock || hyprlock
sudo dell-bios-fan-control 1
#hyprctl keyword cursor:inactive_timeout 60
