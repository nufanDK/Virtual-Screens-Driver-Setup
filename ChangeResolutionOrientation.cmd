::powershell -noexit "%~dp0\ChangeResolutionOrientation.ps1"

::powershell.exe -noexit "& '%~dp0ChangeResolutionOrientation.ps1'"

@ECHO OFF

:Loop
IF "%1"=="1" GOTO Continue1
IF "%1"=="2" GOTO Continue2
IF "%1"=="" GOTO End
GOTO Loop

:Continue1
    powershell.exe -ExecutionPolicy Bypass -File "%~dp0ChangeResolutionOrientation.ps1" -count 1
GOTO End

:Continue2
    powershell.exe -ExecutionPolicy Bypass -File "%~dp0ChangeResolutionOrientation.ps1" -count 2
GOTO End

:End