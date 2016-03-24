@echo off
color 0a
SET /P addy=What is the address you would like to sign?
ECHO %addy%> ..\core\addy.txt
SET /P msg=What message do you wish to sign with (NO SPACES!)?
ECHO %msg%> ..\core\msg.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET /P txt=<..\core\msg.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% signmessage "%add%" "%txt%"> ..\OUTPUTS\SignedMessage.txt
DEL ..\core\addy.txt
DEL ..\core\msg.txt
ECHO Success! Your message hash is in "BATforN\OUTPUTS" folder
pause
