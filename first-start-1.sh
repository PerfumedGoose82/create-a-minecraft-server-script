#!/bin/bash

# wait for user to place server in folder
read -p "Press any key once you have placed the server file in the folder " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
	then
	# move to directory on desktop and enable dependecies
	cd ~/Desktop/Minecraft\ Server/
	mv *.jar server.jar
	echo "If you just got an error dont worry"
	sleep 1
	cp ngrok-start.sh ~/
	# make folder for plugins
	mkdir plugins
	java -jar server.jar 
	# accept eula	
	clear
	echo "Now you have to accept the eula, open eula.txt with a text editor and replace false with true"
	sleep 7
	read -p "Press any key once you have accepted the eula " -n 1 -r
        echo
        if [[ $REPLY =~ ^[]$ ]]
        	then
		echo "I dont want to make this file 5MB so just change true to false and run first-start-1.sh again and press something other than what you pressed"
        fi

	clear
	# Does the user want ngrok
	read -p "Ngrok is an application that does the port forwarding stuff for you without changing the router settings, would you like to use it or will you do the port forwarding manually? (reply "y" if you want ngrok, "n" if you dont) " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]
		then
		# create account
		echo "Create an account, download ngrok and PUT IT IN THE FOLDER ON YOUR DESKTOP, then you will enter the authtoken once you start the server"
		sleep 2
		open https://dashboard.ngrok.com/get-started/setup
		echo "open https://dashboard.ngrok.com/get-started/setup to get started"
		read -p "Press f when you have put ngrok in the folder on your desktop and have an account " -n 1 -r
		echo
		if [[ $REPLY =~ ^[Ff]$ ]]
			then
			clear
			# start the server again to generate world
			echo "Now you can launch the server from start.sh"
			sleep 3
			/bin/bash start.sh
			exit
		fi
	fi
	clear
	# start the server again to generate world
	echo "Now you can start the server with start.sh"
	sleep 3
	/bin/bash start.sh
	exit
fi
# move to directory on desktop and enable dependecies
cd ~/Desktop/Minecraft\ Server/
mv *.jar server.jar
echo "If you just got an error dont worry"
sleep 1
cp ngrok-start.sh ~/
# make folder for plugins
mkdir plugins
java -jar server.jar 
# accept eula	
clear
echo "Now you have to accept the eula, open eula.txt with a text editor and replace false with true"	
sleep 7
read -p "Press any key once you have accepted the eula " -n 1 -r
echo
if [[ $REPLY =~ ^[]$ ]]
        then
	echo "I dont want to make this file 5MB so just change true to false and run first-start-1.sh again and press something other than what you pressed"
fi

clear
# Does the user want ngrok
read -p "Ngrok is an application that does the port forwarding stuff for you without changing the router settings, would you like to use it or will you do the port forwarding manually? (reply "y" if you want ngrok, "n" if you dont) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
	then
	# create account
	echo "Create an account, download ngrok and PUT IT IN THE FOLDER ON YOUR DESKTOP, then you will enter the authtoken once you start the server"
	sleep 2
	open https://dashboard.ngrok.com/get-started/setup
	echo "open https://dashboard.ngrok.com/get-started/setup to get started"
	read -p "Press f when you have put ngrok in the folder on your desktop and have an account " -n 1 -r
	echo
	if [[ $REPLY =~ ^[Ff]$ ]]
		then
		clear
		# start the server again to generate world
		echo "Now you can launch the server from start.sh"
		sleep 3
		/bin/bash start.sh
		exit
	fi
fi
clear
# start the server again to generate world
echo "Now you can start the server with start.sh"
sleep 3
/bin/bash start.sh
exit
