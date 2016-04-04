@echo off
color 0a
set pas=
set s=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890
set m=0
:loop
set /a n=%random% %% 62
call set pas=%pas%%%s:~%n%,1%%
set /a m=m+1
if not %m%==18 goto loop:
SET /P pass=Please enter the new password (recommended: %pas%):
ECHO %pass%> ..\core\pass.txt
SET /P data=<..\core\data.txt
SET /P conf=<..\core\conf.txt
SET /P key=<..\core\pass.txt
coind -datadir=%data% -conf=%conf% encryptwallet %key%
ECHO Success! The password has been set to "%key%". Write this password down!
DEL ..\core\pass.txt
ECHO Yes> ..\core\pass.txt
pause