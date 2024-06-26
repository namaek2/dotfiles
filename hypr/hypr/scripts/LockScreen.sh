#!/bin/bash

sleep 0.1
hyprctl keyword general:cursor_inactive_timeout 1
pidof hyprlock || hyprlock
hyprctl keyword general:cursor_inactive_timeout 0
