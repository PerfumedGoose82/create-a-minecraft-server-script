#!/bin/bash

read -p "Do you want a Vanilla minecraft server? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	read -p "Do you want the latest version? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	echo "Save the downloaded file into this folder"
	sleep 1
	open https://www.minecraft.net/en-us/download/server/
	
	fi
        echo "To get a specific version of a vanilla minecraft server open Minecraft launcher, click Installations, click New, then select which version you want and above the box with the minecraft version there should be text that says server, then click it and it will start downloading in your web browser."
	echo "Once downloaded, place it in this folder"
	
fi

