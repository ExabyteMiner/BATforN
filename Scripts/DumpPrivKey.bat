@echo off
color 0a
MKDIR ..\OUTPUTS
SET /P addy=What address do you want to dump the priv key for?:
echo %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET dmp=%bitd% dumpprivkey %add%
%dmp%> ..\OUTPUTS\privkey.txt
del ..\core\addy.txt
echo Your privkey is in the "BATforN\OUTPUTS" folder.
pause