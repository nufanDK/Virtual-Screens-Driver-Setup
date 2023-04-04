# Virtual-Screens-Driver-Setup
Scripts and drivers for installing multiple virtual screens for use with VR applications that displays the desktop.
Utilizes a combination of drivers from Immersed (https://immersed.com/) and usbmidd from Amyuni (https://www.amyuni.com/forum/viewtopic.php?t=3030), in order to create multiple instances of virtual screens.
(the driver from amyuni forms the basis, and their cmd-line tool allows me to enable and disable the drivers programmatically. And the drivers from immersed allows me to create multiple instances)

Scripts are Powershell scripts for activating the virtual screens and setting resolutions.
See .bat files for script execution order.

<b>DRIVER INSTALL</b>
1. Go to "./Immersed Display Drivers/Drivers", and right click "Immersed-display-driver.inf", and choose "Install".
2. In ./usbmmidd use ./deviceinstaller64.exe to install the usbmidd_dummy.inf, by using the following command-line: .\deviceinstaller64 install usbmmidd_dummy.inf <ChooseHwIDofVirtualDisplay (e.g. VirtualDisplay1)>
3. Install should fail, but in Device Manager, a new device under Display Adaptors should be present (called "Unknown Device").
4. Right-click "Unknown Device", and choose "Update Driver".
5. Then choose "Browse my computer for drivers", and then choose "Let me pick from a list of available drivers on my computer".
6. Select "Immersed Inc." and "Immersed Virtual Display Adapter", and click OK.
7. A new monitor should now be automatically installed and present under "Display settings".

IMPORTANT! IN ORDER FOR THE CURRENT .BAT FILES TO APPROPRIATELY WORK WITH WINDOWS SCALING AUTOMATICALLY, DO THE FOLLOWING STEPS:

1. [WIN]+R "ms-settings:display"
2. Set default scaling for your primary monitor per your usual preference (for mine 150%).
3. Export reg key "Computer\HKEY_CURRENT_USER\Control Panel\Desktop", and save as "StandardDPISettings.reg" in same folder as .bat scripts.
4. Then set scaling to 100%, and export reg key "Computer\HKEY_CURRENT_USER\Control Panel\Desktop" again, and save as "NoneScaleDPISettings.reg" in same folder as .bat scripts.
5. Now enjoy easy activation/deactivation and setup of virtual screens when needed (e.g., together with Virtual Desktop for VR).

Thanks for the following discussions for pointing me in the appropriate direction, and enlightening me, that the scaling could be done without reboot or signout/-in:
- https://community.spiceworks.com/how_to/176533-overriding-windows-display-scale
- https://stackoverflow.com/questions/35233182/how-can-i-change-windows-10-display-scaling-programmatically-using-c-sharp
- https://stackoverflow.com/questions/49676660/how-to-run-the-reg-file-using-powershell

Also a HUGE thank you to Timothy Mui for the powershell script upon which I have built my setup (https://github.com/timmui/ScreenResolutionChanger)


Be aware that the shortcuts (.lnk) files holds the argument for how many screens should be created, and needs to be directed to wherever the "VirtualScreens_Enable.bat" file is located. 




<b>Possibilities for improvement</b>
- Getting rid of the double step of using both Immersed and usbmidd drivers, and instead rely on drivers that for sure are not prone to licensing issues (don't know if these two are).
  - Possibilities: https://virtualmonitor.github.io/ and https://github.com/roshkins/IddSampleDriver and https://github.com/ge9/IddSampleDriver/
  - Read from here to possibly apply the last option: https://www.reddit.com/r/MoonlightStreaming/comments/rzpcpc/moonlight_streaming_without_monitor_no_dummy_plug/
  
  
