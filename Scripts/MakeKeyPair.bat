@echo off
color 0a
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% makekeypair> ..\OUTPUTS\keypair.txt
ECHO Your keypair is in "BATforN\OUTPUTS" folder
pause
