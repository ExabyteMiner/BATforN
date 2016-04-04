@echo off
color 0a
MKDIR core
SET /P data=Enter path to your coin's data directory:
ECHO %data%> core\data.txt
SET /P conf=Enter name of your coin's config file:
ECHO %conf%> core\tmp.txt
SET /P string=<core\tmp.txt
SET clean=%string:.conf=%
ECHO %clean%> core\tmp2.txt
SET /P new=< core\tmp2.txt
ECHO %new%.conf> core\conf.txt
DEL core\tmp.txt
DEL core\tmp2.txt
ECHO Program configured. Opening scripts folder...
TIMEOUT /T 1
%SystemRoot%\explorer.exe "Scripts"
ECHO Scripts folder opened, please refer to info.txt... This window will close in 10 seconds...
TIMEOUT /T 10
EXIT 0