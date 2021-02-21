#!/bin/bash

# This is a custom script that I made to start a minecraft server using ngrok.
# Ngrok is a website that does the port forwarding for you if you cant access the router like in a hotel.
# Author: Cristian Mazzotta

# Prompt the user if they want to update the authoken for ngrok

read -p "Do you want to set the authtoken for ngrok? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "A window will open showing the authtoken command, please enter it here"
    sleep 3
    open https://dashboard.ngrok.com/get-started/setup
    echo "Please enter the command to setup the authoken: "
    read text
    echo "$text" >> authtoken.sh
    sh authtoken.sh
    sleep 2
    rm -f authtoken.sh
fi

# Does the user want to start ngrok

read -p "Would you like to start ngrok? (Opens a new terminal window) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # stop ngrok if it is already running
    killall ngrok 

    # start ngrok in new terminal window
    osascript -e 'tell app "Terminal"
        do script "sh ngrok-start.sh"
    end tell'   
fi
    
echo "How many gigabytes of ram would you like to allocate to the server?"
read text
echo ""$text"Gb of ram allocated to server"
sleep 1
java -Xmx"$text"G -Xms"$text"G -jar spigot-1.12.2.jar

