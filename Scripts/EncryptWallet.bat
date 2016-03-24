@echo off
color 0a
SET /P pass=Please enter the new password (I recommend a random series of letters and numbers with upper AND lower case):
echo %pass%> ..\core\pass.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P key=<..\core\pass.txt
SET bitd=coind -datadir=%data% -conf=%conf%
SET crp=%bitd% encryptwallet %key%
%crp%
del ..\core\pass.txt
echo The password has been set to "%key%".
pause