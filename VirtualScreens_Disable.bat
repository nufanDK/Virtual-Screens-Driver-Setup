.\usbmmidd\deviceinstaller64.exe disable *VirtualDisplay*
TIMEOUT 3

reg import .\StandardDPISettings.reg
TIMEOUT 3

.\ChangeResolutionOrientation.cmd 1

