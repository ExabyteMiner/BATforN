@echo off
color 0a
CD ../engine
SET /P tx=What is the txid of the transaction you would like to view?
echo %tx%> ..\core\tx.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P txid=<..\core\tx.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET get=%bitd% getrawtransaction %txid%
MKDIR ..\OUTPUTS
%get%> ..\OUTPUTS\RawTransaction.txt
del ..\core\tx.txt
ECHO Your transaction info is in "BATforN\OUTPUTS" folder
pause