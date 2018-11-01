@echo off
echo Checking your system information. Please wait...
echo.
systeminfo | findstr /c:"Host Name"
systeminfo | findstr /c:"Domain" 
systeminfo | findstr /c:"OS Name" 
systeminfo | findstr /c:"OS Version" 
systeminfo | findstr /c:"System Manufacturer" 
systeminfo | findstr /c:"System Model"
systeminfo | findstr /c:"System type" 
systeminfo | findstr /c:"Total Physical Memory"
echo. 
ipconfig | findstr /c:"IPv4 Address" 
ipconfig | findstr /c:"IPv6 Address"
echo -----------------------------------------------------------------------------------
echo Hard Drive Space: 
wmic diskdrive list brief
echo Hard Drive Condition: 
wmic diskdrive get status
echo BIOS: 
wmic bios list brief 
echo CPU: 
wmic cpu list brief
echo Completed! 
pause

REM	This BAT file takes all hardware information from the computer when run.


REM Needs:
REM Output to txt file with formatting
REM Formatting inside the console
REM Long scan check
REM Sector check on Full scan version
REM Color Coding for different hardware pieces


REM Could be migrated into VB software/code.


