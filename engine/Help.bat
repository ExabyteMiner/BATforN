@echo off
color 0a
CD ../engine
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET hlp=%bitd% help
%hlp%
pause