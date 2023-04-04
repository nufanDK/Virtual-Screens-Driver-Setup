@ECHO OFF

:Loop
IF "%1"=="1" GOTO Continue1
IF "%1"=="2" GOTO Continue2
IF "%1"=="3" GOTO Continue3
IF "%1"=="4" GOTO Continue4
IF "%1"=="" GOTO Continue4
GOTO Loop

:Continue1
.\usbmmidd\deviceinstaller64.exe enable *VirtualDisplay1
GOTO ExtendDesktop

:Continue2
.\usbmmidd\deviceinstaller64.exe enable *VirtualDisplay1 *VirtualDisplay2
GOTO ExtendDesktop

:Continue3
.\usbmmidd\deviceinstaller64.exe enable *VirtualDisplay1 *VirtualDisplay2 *VirtualDisplay3
GOTO ExtendDesktop


:Continue4
.\usbmmidd\deviceinstaller64.exe enable *VirtualDisplay1 *VirtualDisplay2 *VirtualDisplay3 *VirtualDisplay4
GOTO ExtendDesktop

:ExtendDesktop
TIMEOUT 1
displayswitch /extend
GOTO ChangeScale

:ChangeScale
TIMEOUT 2
reg import .\NoneScaleDPISettings.reg
GOTO ResolutionOrientation

:ResolutionOrientation
TIMEOUT 1
.\ChangeResolutionOrientation.cmd
