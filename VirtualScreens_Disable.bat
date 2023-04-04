.\usbmmidd\deviceinstaller64.exe disable *VirtualDisplay*
TIMEOUT 3

reg import .\StandardDPISettings.reg
TIMEOUT 3

.\ChangeScreenResolution.exe /d=\\.\DISPLAY1 /w=3240 /h=2160
TIMEOUT 3

