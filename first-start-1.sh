#!/bin/bash

read -p "Press f once you have placed the server file in the folder " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
mv *.jar server.jar
cp ngrok-start.sh ~/
cp eula.sh ~/
java -jar server.jar 
echo "Now you have to accept the eula, replace false with true then press the keys ctrl+o and ctrl+x"
sleep 3
    osascript -e 'tell app "Terminal"
        do script "sh eula.sh"
    end tell'
read -p "Ngrok is an application that does the port forwarding stuff for you without changing the router settings, would you like to use it or will you do the port forwarding manually? (reply "y" if you want ngrok, "n" if you dont) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo "Create an account and download ngrok, then you will enter the authtoken once you start the server"
sleep 2
open https://dashboard.ngrok.com/get-started/setup
read -p "Press f when you are ready to start the server and have an account " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
sh start.sh
fi
fi
sh start.sh
fi