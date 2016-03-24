@echo off
color 0a
SET /P key=What is the privkey you would like to import?:
echo %key%> ..\core\key.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P priv=<..\core\key.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET imp=%bitd% importprivkey %priv%
%imp%
del ..\core\key.txt
echo The key has been imported...
pause