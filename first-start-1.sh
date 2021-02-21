#!/bin/bash

read -p "Press f once you have placed the server file in the folder " -n 1 -r
echo
if [[ $REPLY =~ ^[Ff]$ ]]
then
mv *.jar server.jar


fi
