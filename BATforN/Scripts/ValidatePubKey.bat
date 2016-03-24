@echo off
color 0a
SET /P addy=What is the pubkey you would like to validate?
echo %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET val=%bitd% validatepubkey %add%
%val%
del ..\core\addy.txt
pause