@echo off
color 0a
SET /P addy=What is the address on which the message was signed?
ECHO %addy%> ..\core\addy.txt
SET /P sig=What is the signature hash?
ECHO %sig%> ..\core\sig.txt
SET /P msg=What is the EXACT message as it was signed?
ECHO %msg%> ..\core\msg.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET /P str=<..\core\sig.txt
SET /P mse=<..\core\msg.txt
coind -datadir=%data% -conf=%conf% verifymessage "%add%" "%str%" "%mse%"
DEL ..\core\addy.txt
DEL ..\core\sig.txt
DEL ..\core\msg.txt
pause
