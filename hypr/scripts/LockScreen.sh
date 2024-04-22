#!/bin/bash

CONFIG="$HOME/.config/swaylock/config"

#sleep 0.01s; 
swaylock --config ${CONFIG} & disown
