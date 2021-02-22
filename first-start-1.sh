#!/bin/bash

# clean up terminal
clear

# wait for user to place server in folder
read -p "Press any key once you have placed the server file in the folder " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
# move to directory on desktop and enable dependecies
cd ~/Desktop/Minecraft\ Server/
mv *.jar server.jar
cp ngrok-start.sh ~/
cp eula.sh ~/
# make folder for plugins
mkdir plugins
java -jar server.jar 
# accept eula
echo "Now you have to accept the eula, replace false with true then press the keys ctrl+o and ctrl+x"
sleep 7
    osascript -e 'tell app "Terminal"
        do script "sh eula.sh"
    end tell'
clear
# Does the user want ngrok
read -p "Ngrok is an application that does the port forwarding stuff for you without changing the router settings, would you like to use it or will you do the port forwarding manually? (reply "y" if you want ngrok, "n" if you dont) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
# create account
echo "Create an account and download ngrok, then you will enter the authtoken once you start the server"
sleep 2
open https://dashboard.ngrok.com/get-started/setup
read -p "Press f when you are ready to start the server and have an account " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
# start the server again to generate world
echo "Now you can launch the server from start.sh"
sleep 3
sh start.sh
exit
fi
fi
clear
# start the server again to generate world
echo "Now you can start the server with start.sh"
sleep 3
sh start.sh
exit
fi

# move to directory on desktop and enable dependecies
cd ~/Desktop/Minecraft\ Server/
mv *.jar server.jar
cp ngrok-start.sh ~/
cp eula.sh ~/
# make folder for plugins
mkdir plugins
java -jar server.jar 
# accept eula
echo "Now you have to accept the eula, replace false with true then press the keys ctrl+o and ctrl+x"
sleep 7
    osascript -e 'tell app "Terminal"
        do script "sh eula.sh"
    end tell'
clear
# Does the user want ngrok
read -p "Ngrok is an application that does the port forwarding stuff for you without changing the router settings, would you like to use it or will you do the port forwarding manually? (reply "y" if you want ngrok, "n" if you dont) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
# create account
echo "Create an account and download ngrok, then you will enter the authtoken once you start the server"
sleep 2
open https://dashboard.ngrok.com/get-started/setup
read -p "Press f when you are ready to start the server and have an account " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
# start the server again to generate world
echo "Now you can launch the server from start.sh"
sleep 3
sh start.sh
exit
fi
fi
clear
# start the server again to generate world
echo "Now you can start the server with start.sh"
sleep 3
sh start.sh
exit
