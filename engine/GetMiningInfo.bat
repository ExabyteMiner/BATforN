@echo off
color 0a
CD ../engine
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET inf=%bitd% getmininginfo
%inf%
pause