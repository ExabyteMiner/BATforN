@echo off
color 0a
SET /P addy=What is the address you would like to validate?
ECHO %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
coind -datadir=%data% -conf=%conf% validateaddress %add%
DEL ..\core\addy.txt
pause
