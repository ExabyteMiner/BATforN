@echo off
color 0a
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
coind -datadir=%data% -conf=%conf% getmininginfo
pause
