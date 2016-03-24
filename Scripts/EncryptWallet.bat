@echo off
color 0a
SET /P pass=Please enter the new password (I recommend a random series of letters and numbers with upper AND lower case):
ECHO %pass%> ..\core\pass.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P key=<..\core\pass.txt
coind -datadir=%data% -conf=%conf% encryptwallet %key%
DEL ..\core\pass.txt
ECHO Success! The password has been set to "%key%".
pause
