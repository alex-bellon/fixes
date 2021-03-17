# `error: unknown filesystem, grub rescue`

Usually can be fixed by changing from RAID to AHCI operation in the Disk Operation settings of BIOS.

Otherwise:
```bash
ls (hd0,5) # or whichever lists actual files
set root=(hd0,5)
set prefix=(hd0,5)/boot/grub
insmod normal
normal
```

[Source](https://askubuntu.com/questions/142300/how-to-fix-error-unknown-filesystem-grub-rescue)

## Permanent fix

After boot Linux/Ubuntu based OS will load then open a terminal and write the command:

```bash
user@ ~ $ sudo update-grub
```

then type this command:

```bash
user@ ~ $ sudo grub-install /dev/sda
```

after these operation now finally reboot your system.


[Source](https://askubuntu.com/questions/867519/grub-rescue-setting-boot-and-prefix-again-and-again)
