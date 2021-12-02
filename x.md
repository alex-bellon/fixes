# X

## Keep xrandr/arandr settings

You will note that arandr has the option somewhere in its menu system to save your current configuration as a shell script. Do that, then append the contents of the newly written file to the end of your `~/.xinitrc`.


## Set screen timeout

You can disable the screen saver feature with:
```shell
xset s off
```
The power saving feature can be turned off with
```shell
xset -dpms
```
With these settings the screen should no longer turn off or blank automatically until you reboot your machine.
- [Source](https://askubuntu.com/questions/763994/screen-times-out-in-i3-wm)


## xprop

Use to find the title of the program that you can use in `i3` config, `compton` config, etc.

Run `xprop` and then click on the window you want, the title is the second string in the `WM_CLASS` line.
