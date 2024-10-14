#!/bin/sh

echo 'creating pkglist & pkglist_aur'
pacman -Qqen > pkglist.txt
pacman -Qqem > pkglist_aur.txt
