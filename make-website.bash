#!/bin/bash
test -d ../abitur-electron-app
dirvar=$(echo $?)
if [ $dirvar == 0 ]
then
	rm -rf website-files/*
	cd hugo/
	hugo -d ../website-files/
else
	test -d ../hugo
	dirvar=$(echo $?)
	if [ $dirvar == 0 ]
	then
		rm -rf ../website-files/*
		hugo -d ../website-files/
	fi
fi
