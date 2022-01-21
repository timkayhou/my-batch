@echo off

set savePath=C:\Users\admin\Desktop
set username=root
set password=password
set database=test
set fileName=database

mysql -u%username% -p%password% %database% > %savePath%/%fileName%.sql
pause