# i3wm

## Assign workspaces to monitors

```
# monitors
set $monitor_left DVI-I-2
set $monitor_right DVI-I-3

# Setup workspaces
workspace $wksp1 output $monitor_left
workspace $wksp2 output $monitor_right
workspace $wksp3 output $monitor_left
workspace $wksp4 output $monitor_right
workspace $wksp5 output $monitor_left
workspace $wksp6 output $monitor_right
workspace $wksp7 output $monitor_left
workspace $wksp8 output $monitor_right
workspace $wksp9 output $monitor_left
workspace $wksp10 output $monitor_right
```

- [Source](https://destinmoulton.com/blog/2019/i3-config-tip-assign-workspaces-to-monitors/)

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
