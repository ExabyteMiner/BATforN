@echo off
color 0a
CD ../engine
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET kyp=%bitd% makekeypair
MKDIR ..\OUTPUTS
%kyp%> ..\OUTPUTS\keypair.txt
echo Your keypair is in "BATforN\OUTPUTS" folder
pause