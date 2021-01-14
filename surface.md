# Getting Linux working on a Surface

## WiFi continually dropping on Ubuntu

Edit

```shell
sudo vim /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
```

and in the section

```
[connection]

wifi.powersave = 3
```

change the 3 to a 2.


*[Source](https://www.reddit.com/r/SurfaceLinux/comments/9yt16i/surface_pro_3_ubuntu_update_on_wifi_issues/)*
