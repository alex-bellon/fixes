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
