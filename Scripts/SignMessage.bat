@echo off
color 0a
SET /P addy=What is the address you would like to sign?
ECHO %addy%> ..\core\addy.txt
SET /P msg=What is the message you would like to sign with?
ECHO %msg%> ..\core\msg.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P add=<..\core\addy.txt
SET /P txt=<..\core\msg.txt
setlocal enabledelayedexpansion
if exist ..\core\pass.txt (
SET /P pass=What is the wallet password...?
ECHO !pass!> ..\core\tmp.txt
SET /P key=<..\core\tmp.txt
coind -datadir=!data! -conf=!conf! walletpassphrase !key! 10
DEL ..\core\tmp.txt
setlocal disabledelayedexpansion
coind -datadir=%data% -conf=%conf% signmessage %add% %txt%> ..\OUTPUTS\SignatureHash.txt
DEL ..\core\addy.txt
DEL ..\core\msg.txt
ECHO Success! Your message hash is in "BATforN\OUTPUTS" folder, this window will close in 10 seconds...
%SystemRoot%\explorer.exe "..\OUTPUTS"
TIMEOUT /T 10
EXIT 0
) else (
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% signmessage %add% %txt%> ..\OUTPUTS\SignatureHash.txt
DEL ..\core\addy.txt
DEL ..\core\msg.txt
ECHO Success! Your message hash is in "BATforN\OUTPUTS" folder, this window will close in 10 seconds...
%SystemRoot%\explorer.exe "..\OUTPUTS"
TIMEOUT /T 10
EXIT 0
)