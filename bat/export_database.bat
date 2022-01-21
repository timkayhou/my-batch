@echo off

set savePath=C:\Users\admin\Desktop
set hostName=localhost
set username=root
set password=password
set database=mysql
set characterSet=utf8
set fileName=database

echo Host name: %hostName%
echo Username: %username%
echo Database: %database%
echo Character Set: %characterSet%
echo File Name: %savePath%\%fileName%

mysqldump -h%hostName% -u%username% -p%password% --routines --default-character-set=%characterSet% %database% > %savePath%/%fileName%.sql
pause