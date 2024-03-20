**GUIDE**<br />

Download hyprland.sh<br />
Open a terminal emulator of choice.<br />
`CD` to your downloads.<br />
Run `chmod +x hyprland.sh`<br />
Run `sudo ./hyprland.sh`<br />
Your system will reboot.<br />

**How to get the wallpaper working.**<br />

INSTALL USING THE ABOVE GUIDE BEFORE DOING THIS.<br />
Run `hyprctl monitors`<br />
Save the monitor names (EG DP-1) somewhere.<br />
Open ~/.config/hypr/hyprpaper.conf in your preferred text editor.<br />
Modify `wallpaper = DP-1,/home/amy/Pictures/PurpleCity.jpg` so it is `wallpaper = [PRINTED MONITOR ID],[DIRECTORY TO YOUR HOME]<br />Pictures/PurpleCity.jpg`, if you do not have a second monitor you can remove the second wallpaper entry.<br />
Reboot and enjoy!<br />
