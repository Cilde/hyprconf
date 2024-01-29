**GUIDE**

Download hyprland.sh
Open a terminal emulator of choice.
`CD` to your downloads.
Run `chmod +x hyprland.sh`
Run `sudo ./hyprland.sh`
Your system will reboot.

**How to get the wallpaper working.**

INSTALL USING THE ABOVE GUIDE BEFORE DOING THIS.
Run `hyprctl monitors`
Save the monitor names (EG DP-1) somewhere.
Open ~/.config/hypr/hyprpaper.conf in your preferred text editor.
Modify `wallpaper = DP-1,/home/amy/Pictures/PurpleCity.jpg` so it is `wallpaper = [PRINTED MONITOR ID],/home/amy/Pictures/PurpleCity.jpg`, if you do not have a second monitor you can remove the second wallpaper entry.
Reboot and enjoy!
