@echo off
color 0a
CD ../engine
SET /P addy=What is the address you would like to validate?
echo %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET val=%bitd% validateaddress %add%
%val%
del ..\core\addy.txt
pause