#!/bin/bash

hyprctl keyword general:cursor_inactive_timeout 1
pidof hyprlock || hyprlock
hyprctl keyword general:cursor_inactive_timeout 0
