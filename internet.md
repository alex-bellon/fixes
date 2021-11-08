# Internet

## Detect physical ethernet cable plugged in
You want to look at the nodes in
```
/sys/class/net/
```
I experimented with mine:

Wire Plugged in:
```
eth0/carrier:1
eth0/operstate:unknown
```
Wire Removed:
```
eth0/carrier:0
eth0/operstate:down
```
[Source](https://stackoverflow.com/questions/808560/how-to-detect-the-physical-connected-state-of-a-network-cable-connector)


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
