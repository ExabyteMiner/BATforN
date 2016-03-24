@echo off
color 0a
CD ../engine
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET gpi=%bitd% getpeerinfo
MKDIR ..\OUTPUTS
%gpi%> ..\OUTPUTS\PeerInfo.txt
ECHO Peer info is in "BATforN\OUTPUTS" folder
pause