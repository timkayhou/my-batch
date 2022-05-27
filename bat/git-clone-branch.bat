@echo off
rem init
set branch=
rem please input
set /P branch="branch: "
rem input echo
set "command=git clone -b feature/#%branch% git@github.com:myRepo.git %branch%"
echo %command%
cmd /k %command%