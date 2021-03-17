# WiFi Card

## Get hardware information
```shell
sudo lshw -C network
```
## Find out if wireless card supports 5GHz

```shell
iwconfig
iwlist <interface> freq
```
[Source](https://unix.stackexchange.com/questions/137894/how-do-i-find-out-if-my-wireless-card-supports-5-ghz)
