@echo off
color 0a
setlocal enabledelayedexpansion
SET /P addy=What address do you want to dump the priv key for?:
ECHO %addy%> ..\core\addy.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
if exist ..\core\pass.txt (
SET /P pass=What is the wallet password...?
ECHO !pass!> ..\core\tmp.txt
SET /P key=<..\core\tmp.txt
coind -datadir=!data! -conf=!conf! walletpassphrase !key! 10
DEL ..\core\tmp.txt
MKDIR ..\OUTPUTS
coind -datadir=!data! -conf=!conf! dumpprivkey !add!> ..\OUTPUTS\privkey.txt
DEL ..\core\addy.txt
ECHO Your privkey is in the "BATforN\OUTPUTS" folder. This window will close in 10 seconds...
%SystemRoot%\explorer.exe "..\OUTPUTS"
TIMEOUT /T 10
EXIT 0
) else (
MKDIR ..\OUTPUTS
coind -datadir=!data! -conf=!conf! dumpprivkey !add!> ..\OUTPUTS\privkey.txt
DEL ..\core\addy.txt
ECHO Your privkey is in the "BATforN\OUTPUTS" folder. This window will close in 10 seconds...
%SystemRoot%\explorer.exe "..\OUTPUTS"
TIMEOUT /T 10
EXIT 0
)
