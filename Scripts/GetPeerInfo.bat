@echo off
color 0a
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% getpeerinfo> ..\OUTPUTS\PeerInfo.txt
echo Peer info is in "BATforN\OUTPUTS" folder, this window will close in 10 seconds...
%SystemRoot%\explorer.exe ..\OUTPUTS
TIMEOUT /T 10
EXIT 0
