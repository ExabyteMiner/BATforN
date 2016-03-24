@echo off
color 0a
MKDIR ..\OUTPUTS
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET kyp=%bitd% makekeypair
%kyp%> ..\OUTPUTS\keypair.txt
echo Your keypair is in "BATforN\OUTPUTS" folder
pause