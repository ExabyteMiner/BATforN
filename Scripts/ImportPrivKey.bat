@echo off
color 0a
SET /P key=What is the privkey you would like to import?:
ECHO %key%> ..\core\key.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P priv=<..\core\key.txt
coind -datadir=%data% -conf=%conf% importprivkey %priv%
DEL ..\core\key.txt
ECHO Success! The key has been imported...
pause
