@echo off 

cd %USERPROFILE%\Desktop\Minecraft Server
set INPUT=
set /p INPUT=Do you want to set the authtoken for ngrok? (y/n):
if "%INPUT%"=="y" goto AUTHTOKEN
goto NORMAL

:AUTHTOKEN
echo Copy the authtoken not the command, to set the authtoken then enter it here
start "" https://dashboard.ngrok.com/auth/your-authtoken
set TOKEN=
set /p TOKEN=Enter authtoken here: 
ngrok authtoken %TOKEN%
goto NORMAL

:NORMAL
set INPUT=
set /p INPUT=Do you want to start ngrok? (y/n):
if "%INPUT%"=="y" taskkill /f /im ngrok.exe & start cmd /k "cd %USERPROFILE%\Desktop\Minecraft Server & ngrok.exe tcp 25565"

set RAM=
set /p RAM=How many Gigabytes of ram do you want allocated to the server? 
echo %RAM%GB of ram allocated to the server
java -Xmx"%RAM%"G -Xms"%RAM%"G -jar server.jar
exit