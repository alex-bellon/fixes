# Natural Scrolling
```console
→ vim /etc/X11/xorg.conf.d/30-touchpad.conf 
```
Add this:

```
Section "InputClass"
    Identifier "trackpad"
    Option "NaturalScrolling" "true"
EndSection
```
