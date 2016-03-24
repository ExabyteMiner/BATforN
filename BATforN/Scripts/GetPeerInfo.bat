@echo off
color 0a
MKDIR ..\OUTPUTS
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET gpi=%bitd% getpeerinfo
%gpi%> ..\OUTPUTS\PeerInfo.txt
echo Peer info is in "BATforN\OUTPUTS" folder
pause