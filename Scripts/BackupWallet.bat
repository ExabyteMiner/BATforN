@echo off
color 0a
SET /P sav=Where do you want to save? (i.e. c:\WalletBackups - NO SPACES!):
ECHO %sav%> ..\core\save.txt
SET /P name=Enter name of coin:
ECHO %name%> ..\core\name.txt
SET /P nam=<..\core\name.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
MKDIR %sav%\%nam%
coind -datadir=%data% -conf=%conf% backupwallet %sav%\%nam%
ECHO Your wallet has been saved in "%sav%\%nam%". This window will close in 10 seconds...
%SystemRoot%\explorer.exe "%sav%\%nam%"
DEL ..\core\name.txt
DEL ..\core\save.txt
TIMEOUT /T 10
EXIT 0
