@echo off
color 0a
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% getpeerinfo> ..\OUTPUTS\PeerInfo.txt
echo Peer info is in "BATforN\OUTPUTS" folder
pause
