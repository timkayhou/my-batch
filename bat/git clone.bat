@echo off
rem init
set ticket-number=
rem please input
set /P ticket-number="branch: feature/#"
rem input echo
set "command=git clone -b feature/#%ticket-number% git@github.com:JMASystems/KI990_ContractManagementSystem.git feature#%ticket-number%"
echo %command%
cmd /k %command%