#!/bin/bash

CONFIG="$HOME/.config/swaylock/config"

sleep 0.1s; swaylock --config ${CONFIG} & disown
