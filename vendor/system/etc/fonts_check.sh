#!/bin/sh

#This is for the ThemeManager.
#When phone reboots, we will use the new fonts.

if [ -d "/data/system/theme/current/fonts" ]
then
    rm -rf /data/system/theme/fonts
    cp -r /data/system/theme/current/fonts /data/system/theme/fonts
    chmod 00755 /data/system/theme/fonts/*
fi

