@echo off
color 0a
CD ../engine
SET /P addy=What is the address you would like to sign?
echo %addy%> ..\core\addy.txt
SET /P msg=What message do you wish to sign with?
echo %msg%> ..\core\msg.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET /P txt=<..\core\msg.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET msg=%bitd% signmessage "%add%" "%txt%"
MKDIR ..\OUTPUTS
%msg%> ..\OUTPUTS\SignedMessage.txt
::del ..\core\addy.txt::
::del ..\core\msg.txt::
echo Your message is in "BATforN\OUTPUTS" folder
pause