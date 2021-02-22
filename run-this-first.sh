#!/bin/bash

echo "Make sure your terminal directory is in the same folder as this script or it will not work!"
echo "If you are on Linux and get an error saying open: command not found, ignore it, it is for macOS users"

# copy contents into server folder
mkdir ~/Desktop/Minecraft\ Server/
cp * ~/Desktop/Minecraft\ Server/

read -p "Do you have java? " -n 1 -r
echo
if [[ $REPLY =~ ^[Nn]$ ]]
	then
	echo "If you are on Linux get it by running either "sudo apt-get install openjdk-8-jdk" or use your package manager and search for openjdk-8-jdk and install it"
	echo "If you are on macOS wait for your browser to open then download and install it"
	sleep 10
	open https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html
fi


read -p "Do you want a Vanilla minecraft server? If so, you will not have plugins. " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	clear
	read -p "Do you want the latest version? " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	clear
	echo "Save the downloaded file into the new folder in your desktop"
	sleep 1
	echo "Get the file here https://www.minecraft.net/en-us/download/server/"
	open https://www.minecraft.net/en-us/download/server/
	sleep 10
			/bin/bash ~/Desktop/Minecraft\ Server/first-start-1.sh
	exit
	fi
	clear
        echo "To get a specific version of a vanilla minecraft server open Minecraft launcher, click Installations, click New, then select which version you want and above the box with the minecraft version there should be text that says server, then click it and it will start downloading in your web browser."
	echo "Once downloaded, place it in the new folder in your desktop"
       			 /bin/bash ~/Desktop/Minecraft\ Server/first-start-1.sh 
        exit
fi

clear
echo "You will be given a link to download spigot, once there select the version on minecraft you want and place the downloaded file in the new folder in your desktop."
sleep 4
open https://getbukkit.org/download/spigot
echo "Get spigot here at https://getbukkit.org/download/spigot"
        		/bin/bash ~/Desktop/Minecraft\ Server/first-start-1.sh 
exit

