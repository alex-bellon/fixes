# WiFi

## Get hardware information about wifi card
```shell
sudo lshw -C network
```
## Find out if wireless card supports 5GHz

```shell
iwconfig
iwlist <interface> freq
```
[Source](https://unix.stackexchange.com/questions/137894/how-do-i-find-out-if-my-wireless-card-supports-5-ghz)

## WiFi not working after reboot
```shell
→ nmcli c up WiFi
Error: Connection activation failed: No suitable device found for this connection (device enp0s31f6 not available because profile is not compatible with device (mismatching interface name)).

→ sudo systemctl restart NetworkManager.service
```
