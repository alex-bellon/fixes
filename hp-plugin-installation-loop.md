# HP Plugin Installation Loop

```
error: The device you are trying to setup requires a binary plugin. Some functionality may not work as expected without plug-ins. Please run 'hp-plugin' as normal user to install plug-ins.
```

To fix:
```shell
# create missing dirs
sudo mkdir /usr/lib/i386-linux-gnu
sudo mkdir /usr/lib64/x86_64-linux-gnu

# make missing symlinks:
sudo ln -s /usr/lib/sane /usr/lib/i386-linux-gnu/sane
sudo ln -s /usr/lib64/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu
sudo ln -s /usr/lib64/sane /usr/lib64/x86_64-linux-gnu/sane
```

[Source](https://askubuntu.com/questions/1118179/hplip-succesful-driver-download-but-then-fails-to-get-the-driver)
