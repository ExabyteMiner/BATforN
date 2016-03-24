@echo off
color 0a
CD ../engine
SET /P addy=What is the address on which the message was signed?
echo %addy%> ..\core\addy.txt
SET /P sig=What is the signature hash?
echo %sig%> ..\core\sig.txt
SET /P msg=What is the EXACT message as it was signed?
echo %msg%> ..\core\msg.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET /P str=<..\core\sig.txt
SET /P mse=<..\core\msg.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET ver=%bitd% verifymessage "%add%" "%str%" "%mse%"
%ver%
del ..\core\addy.txt
del ..\core\sig.txt
del ..\core\msg.txt
pause