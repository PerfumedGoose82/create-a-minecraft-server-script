#!/bin/bash

echo "Make sure your terminal directory is in the same folder as this script or it will not work!"
echo "If you are on Linux and get an error saying open: command not found, ignore it, it is for macOS users"

# copy contents into server folder
mkdir ~/Desktop/Minecraft\ Server/
cp Extra/* ~/Desktop/Minecraft\ Server/

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
# start of merge file
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
					echo "Now you can launch the server from start-server.sh"
					sleep 3
					cd ~/Desktop/Minecraft Server
					/bin/bash start-server.sh
					exit
				fi
			fi
			clear
			# start the server again to generate world
			echo "Now you can start the server with start.sh"
			sleep 3
			/bin/bash start-server.sh
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
				echo "Now you can launch the server from start-server.sh"
				sleep 3
				cd ~/Desktop/Minecraft Server
				/bin/bash start-server.sh
				exit
			fi
		fi
# end of merge file
	exit
	fi
	clear
	echo "To get a specific version of a vanilla minecraft server open Minecraft launcher, click Installations, click New, then select which version you want and above the box with the minecraft version there should be text that says server, then click it and it will start downloading in your web browser."
	echo "Once downloaded, place it in the new folder in your desktop"
# start of merge file 
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
					echo "Now you can launch the server from start-server.sh"
					sleep 3
					cd ~/Desktop/Minecraft Server
					/bin/bash start-server.sh
					exit
				fi
			fi
			clear
			# start the server again to generate world
			echo "Now you can start the server with start.sh"
			sleep 3
			/bin/bash start-server.sh
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
				echo "Now you can launch the server from start-server.sh"
				sleep 3
				cd ~/Desktop/Minecraft Server
				/bin/bash start-server.sh
				exit
			fi
		fi
# end of merge file
        exit
fi

clear
echo "You will be given a link to download spigot, once there select the version on minecraft you want and place the downloaded file in the new folder in your desktop."
sleep 4
open https://getbukkit.org/download/spigot
echo "Get spigot here at https://getbukkit.org/download/spigot"
# start of merge file
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
					echo "Now you can launch the server from start-server.sh"
					sleep 3
					cd ~/Desktop/Minecraft Server
					/bin/bash start-server.sh
					exit
				fi
			fi
			clear
			# start the server again to generate world
			echo "Now you can start the server with start.sh"
			sleep 3
			start-server.sh
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
				echo "Now you can launch the server from start-server.sh"
				sleep 3
				cd ~/Desktop/Minecraft Server
				/bin/bash start-server.sh
				exit
			fi
		fi
# end or merge file
exit

