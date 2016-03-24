@echo off
color 0a
SET /P sav=Where do you want to save? (i.e. c:\WalletBackups - NO SPACES!):
echo %sav%> ..\core\save.txt
SET /P name=Enter name of coin:
echo %name%> ..\core\name.txt
SET /P nam=<..\core\name.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
MKDIR %sav%\%nam%
%bitd% backupwallet %sav%\%nam%
echo Your wallet has been saved in "%sav%\%nam%"
del ..\core\name.txt
del ..\core\save.txt
pause
