@echo off
color 0a
MKDIR ..\core\tmp
SET /P exe=What is the path to your coin's EXE file (i.e. C:\Program Files\Bitcoin)?:
ECHO %exe%> ..\core\tmp\exe.txt
SET /P name=What is the name of your EXE file (i.e. Bitcoin-QT)?:
ECHO %name%> ..\core\tmp\name.txt
ECHO Processing, wallet will open and close multiple times, please wait until it finishes...
SET /P string=<..\core\tmp\name.txt
SET clean=%string:.exe=%
ECHO %clean%> ..\core\tmp\clean.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET bitd=coind -datadir=%data% -conf=%conf%
%bitd% getrawmempool> ..\core\tmp\mem.txt
MORE +1 ..\core\tmp\mem.txt > ..\core\tmp\mem2.txt
SET /P mem=<..\core\tmp\mem2.txt
SET space=%mem: =%
ECHO %space%> ..\core\tmp\tmp.txt
SET /P tmp=<..\core\tmp\tmp.txt
SET comma=%tmp:,=%
ECHO %comma%> ..\core\tmp\tmp2.txt
SET /P tmp2=<..\core\tmp\tmp2.txt
SET quote=%tmp2:"=%
ECHO %quote%> ..\core\tmp\tmp3.txt
SET /P tmp3=<..\core\tmp\tmp3.txt
%bitd% getrawtransaction %tmp3%> ..\core\tmp\txinfo.txt
ECHO Waiting 10 seconds for program to close...
%bitd% stop
TIMEOUT /T 10
XCOPY %data% ..\core\tmp /e /i
DEL ..\core\tmp\wallet.dat
SET /P pth=<..\core\tmp\exe.txt
SET /P nam=<..\core\tmp\clean.txt
MKDIR  ..\core\tmp\exe
COPY %pth%\%nam%.exe ..\core\tmp\exe
CD ..\core\tmp\exe
SET bitd2=%nam% -datadir=..\
START %bitd2%
CD ..\..\..\Scripts
ECHO Waiting 60 seconds for program to launch...
TIMEOUT /T 60
SET /P txi=<..\core\tmp\txinfo.txt
MKDIR ..\OUTPUTS
coind -datadir=..\core\tmp -conf=%conf% sendrawtransaction %txi%> ..\OUTPUTS\TXID.txt
ECHO Waiting 10 seconds for transaction to process...
TIMEOUT /T 10
ECHO Transaction processed, waiting 10 seconds for program to close...
coind -datadir=..\core\tmp -conf=%conf% stop
TIMEOUT /T 10
START %pth%\%nam%.exe -datadir=%data% -conf=%conf%
RMDIR ..\core\tmp /s /q
SET /P id=<..\OUTPUTS\TXID.txt
ECHO The new transaction ID is %id% and has been copied to "BATforN\OUTPUTS\TXID.txt"
pause
