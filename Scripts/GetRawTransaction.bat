@echo off
color 0a
SET /P tx=What is the txid of the transaction you would like to view?
ECHO %tx%> ..\core\tx.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P txid=<..\core\tx.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% getrawtransaction %txid%> ..\OUTPUTS\RawTransaction.txt
DEL ..\core\tx.txt
ECHO Your transaction info is in "BATforN\OUTPUTS" folder
pause
