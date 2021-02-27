# @echo off

goto SERVER-TYPE

:SERVER-TYPE
mkdir "%USERPROFILE%\Desktop\Minecraft Server"
copy "Extra\*" "%USERPROFILE%\Desktop\Minecraft Server\"
set INPUT=
set /p INPUT=Do you have java? (y/n):
if "%INPUT%"=="n" echo Download the installer and run it & start "" https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html & pause 2
cls
set INPUT=
set /p INPUT=Do you want a Vanilla Minecraft server? (y/n):
if "%INPUT%"=="y" cls & echo Your browser will show up to get the latest version (put the file in the folder on your desktop) & echo . & echo if you do not want the latest version close the browser window then open Minecraft launcher, click Installations, click New, then select which version you want and above the box with the minecraft version there should be text that says server, then click it and it will start downloading in your web browser, once downloaded, put it in the folder on your desktop & pause 2 & start "" https://www.minecraft.net/en-us/download/server/ & goto MAKE
cls 
echo You will get a link to download spigot, choose the verison you want and put it in the folder on you desktop & pause 2 & start "" https://getbukkit.org/download/spigot & goto MAKE

:MAKE
echo Press any key once you have placed the server file in the folder on your desktop
pause 2
cls
cd %USERPROFILE%\Desktop\Minecraft Server
move *.jar server.jar
mkdir plugins
java -jar server.jar 
cls
echo Now you have to accept the eula, open eula.txt and replace false with true
echo Press any key once you have accepted the eula
pause 2 
goto NGROK

:NGROK
cls
set /p INPUT=Do you want ngrok? (It does the port forwarding stuff without you having to change your router settings) (y/n):
if "%INPUT%"=="y" echo make an account and download ngrok then place it in the folder on your desktop & pause 2 & start "" https://dashboard.ngrok.com/get-started/setup & echo Press any key once you have placed the file in the new folder on your desktop & pause 2 & goto START
goto START

:START
cls
echo to start the server again use start.bat instead of this
cd %USERPROFILE%\Desktop\Minecraft Server
call start.bat
exit