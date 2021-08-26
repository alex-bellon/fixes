# X

## Keep xrandr/arandr settings

You will note that arandr has the option somewhere in its menu system to save your current configuration as a shell script. Do that, then append the contents of the newly written file to the end of your `~/.xinitrc`.

## xprop

Use to find the title of the program that you can use in `i3` config, `compton` config, etc.

Run `xprop` and then click on the window you want, the title is the second string in the `WM_CLASS` line.
