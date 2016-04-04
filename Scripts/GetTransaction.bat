@echo off
color 0a
SET /P tx=What is the transaction ID of the transaction you would like to view?
ECHO %tx%> ..\core\tx.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P txid=<..\core\tx.txt
MKDIR ..\OUTPUTS
coind -datadir=%data% -conf=%conf% gettransaction %txid%> ..\OUTPUTS\Transaction.txt
DEL ..\core\tx.txt
ECHO Success! Your transaction info is in "BATforN\OUTPUTS" folder, this window will close in 10 seconds...
%SystemRoot%\explorer.exe ..\OUTPUTS
TIMEOUT /T 10
EXIT 0
