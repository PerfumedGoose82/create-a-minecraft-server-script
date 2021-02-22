#!/bin/bash

# This is a custom script that I made to start a minecraft server using ngrok.
# Ngrok is a website that does the port forwarding for you if you cant access the router like in a hotel.
# Author: PerfumedGoose82 

# clean up terminal a little

clear

read -p "Would you like to add plugins to the server? (Will not work if you have a vanilla minecraft server) " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    read -p "Drag plugin files into here: "
    cp "$REPLY" plugins/
fi
clear

# Prompt the user if they want to update the authoken for ngrok
read -p "Do you want to set the authtoken for ngrok? " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    clear
    echo "Open the link and a window will open showing the authtoken command, please enter it here"
    sleep 3
    open https://dashboard.ngrok.com/get-started/setup
    echo "https://dashboard.ngrok.com/get-started/setup"
    echo "Please enter the command to setup the authoken: "
    read text
    echo "$text" >> authtoken.sh
    /bin/bash authtoken.sh
    sleep 2
    rm -f authtoken.sh
fi
clear

# Does the user want to start ngrok
read -p "Would you like to start ngrok? (Opens a new terminal window) " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # stop ngrok if it is already running
    killall ngrok 

    # start ngrok in new terminal window for different terminals
    gnome-terminal -- "/bin/bash ngrok-start.sh"
    xterm -e "/bin/bash ngrok-start.sh"
    konsole -e "/bin/bash ngrok-start.sh"
    osascript -e 'tell app "Terminal"
        do script "sh ngrok-start.sh"
    end tell' 
fi
clear

# Does the user want a gui
read -p "Would you like to have a gui for the server? " -n 1 -r
echo    
if [[ $REPLY =~ ^[Nn]$ ]]
	then
	echo "How many gigabytes of ram would you like to allocate to the server?"
	read text
	echo ""$text"GB of ram allocated to server"
	sleep 1
	java -Xmx"$text"G -Xms"$text"G -jar server.jar --nogui
	exit
fi

# do i have to explain, its right here  \/
echo "How many gigabytes of ram would you like to allocate to the server?"
read text
echo ""$text"GB of ram allocated to server"
sleep 1
java -Xmx"$text"G -Xms"$text"G -jar server.jar
exit
