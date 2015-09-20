#!/bin/bash

jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "framework" ];then
	echo ">>> in custom_jar $jarBaseName"
        echo ">>> replace Editor* smali"
	rm -rf $tempSmaliDir/smali_classes2/android/widget/Editor*
	cp -rf overlay/framework/smali_classes2/* $tempSmaliDir/smali_classes2/
fi

