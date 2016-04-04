@echo off
color 0a
setlocal enabledelayedexpansion
SET /P key=What is the privkey you would like to import?:
ECHO %key%> ..\core\key.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P priv=<..\core\key.txt
if exist ..\core\pass.txt (
SET /P pass=What is the wallet password...?
ECHO !pass!> ..\core\tmp.txt
SET /P key=<..\core\tmp.txt
coind -datadir=!data! -conf=!conf! walletpassphrase !key! 10
DEL ..\core\tmp.txt
coind -datadir=%data% -conf=%conf% importprivkey %priv%
DEL ..\core\key.txt
ECHO Success! The key has been imported...
pause
) else (
coind -datadir=%data% -conf=%conf% importprivkey %priv%
DEL ..\core\key.txt
ECHO Success! The key has been imported...
pause
)