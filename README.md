# Virtual-Screens-Driver-Setup
Scripts and drivers for installing multiple virtual screens for use with VR applications that displays the desktop.
Utilizes a combination of drivers from Immersed (https://immersed.com/) and one from Amyuni (https://www.amyuni.com/forum/viewtopic.php?t=3030), in order to create multiple instances of virtual screens.

Scripts are Powershell scripts for activating the virtual screens and setting resolutions.
AutoHotKey scripts are also included, in order to account for the scale function not being accessible through PowerShell (per 2020).

See .bat files for script execution order.

<b>DRIVER INSTALL</b>
1. Go to "./Immersed Display Drivers/Drivers", and right click "Immersed-display-driver.inf", and choose "Install".
2. In ./usbmmidd use ./deviceinstaller64.exe to install the usbmidd_dummy.inf, by using the following command-line: .\deviceinstaller64 install usbmmidd_dummy.inf <ChooseHwIDofVirtualDisplay (e.g. VirtualDisplay1)>
3. Install should fail, but in Device Manager, a new device under Display Adaptors should be present (called "Unknown Device").
4. Right-click "Unknown Device", and choose "Update Driver".
5. Then choose "Browse my computer for drivers", and then choose "Let me pick from a list of available drivers on my computer".
6. Select "Immersed Inc." and "Immersed Virtual Display Adapter", and click OK.
7. A new monitor should now be automatically installed and present under "Display settings".
