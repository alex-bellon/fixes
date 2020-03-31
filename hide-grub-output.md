# Hide Output from GRUB

In `/etc/default/grub` add:
```shell
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```
Then run `sudo update-grub`.
