@echo off
color 0a
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET stk=%bitd% getstakinginfo
%stk%
pause