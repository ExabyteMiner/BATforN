@echo off
color 0a
SET /P addy=What address do you want to dump the priv key for?:
ECHO %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET bitd=coind -datadir=%data% -conf=%conf%
MKDIR ..\OUTPUTS
%bitd% dumpprivkey %add%> ..\OUTPUTS\privkey.txt
DEL ..\core\addy.txt
ECHO Your privkey is in the "BATforN\OUTPUTS" folder.
pause
