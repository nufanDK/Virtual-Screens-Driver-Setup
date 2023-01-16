.\usbmmidd\deviceinstaller64.exe disable *VirtualDisplay*
SLEEP 3

.\ChangeScreenResolution.exe /d=\\.\DISPLAY1 /w=3240 /h=2160

SLEEP 3

.\enableScale.ahk