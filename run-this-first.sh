#!/bin/bash

echo "Make sure your terminal directory is in the same folder as this script or it will not work!"

# copy contents into server folder
mkdir ~/Desktop/Minecraft\ Server/
cp * ~/Desktop/Minecraft\ Server/

read -p "Do you have java? " -n 1 -r
echo
if [[ $REPLY =~ ^[Nn]$ ]]
then
echo "Download and run the installer for java then continue with this script"
sleep 2
open https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
fi

read -p "Do you want a Vanilla minecraft server? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	read -p "Do you want the latest version? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	echo "Save the downloaded file into the new folder in your desktop"
	sleep 1
	open https://www.minecraft.net/en-us/download/server/
	clear
        sh ~/Desktop/Minecraft\ Server/first-start-1.sh
	fi
        echo "To get a specific version of a vanilla minecraft server open Minecraft launcher, click Installations, click New, then select which version you want and above the box with the minecraft version there should be text that says server, then click it and it will start downloading in your web browser."
	echo "Once downloaded, place it in the new folder in youe desktop"
	clear
	sh ~/Desktop/Minecraft\ Server/first-start-1.sh 
fi

echo "You will be redirected to download spigot, once there select the version on minecraft you want and place the downloaded file in the new folder in your desktop."
sleep 4
open https://getbukkit.org/download/spigot
clear
sh ~/Desktop/Minecraft\ Server/first-start-1.sh 
