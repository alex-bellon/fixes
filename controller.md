# Controller

## PS4 Controller

### Error running `ds4drv`

```
configparser.DuplicateOptionError: While reading from '/etc/ds4drv.conf' [line 118]: option 'rel_wheelup' in section 'mapping:keyboard' already exists
```
To fix, remove the duplicated lines on 118 from the following file:

```
sudo vim /etc/ds4drv.conf
```
[Source](https://github.com/chrippa/ds4drv/issues/63)

### HIDraw mode doesn't work on `ds4drv`

```
[info][controller 1] Created devices /dev/input/js1 (joystick) /dev/input/event16 (evdev)
[info][hidraw] Scanning for devices
[info][hidraw] Scanning for devices
[info][hidraw] Scanning for devices
```

To fix, change the following lines in `/usr/lib/python3.9/site-packages/ds4drv/backends/hidraw.py`:

```python
HID_DEVICES = {
    "Sony Computer Entertainment Wireless Controller": HidrawUSBDS4Device,
    "Wireless Controller": HidrawBluetoothDS4Device,
}
```

to
```python
HID_DEVICES = {
    "Sony Interactive Entertainment Wireless Controller": HidrawUSBDS4Device,
    "Sony Computer Entertainment Wireless Controller": HidrawUSBDS4Device,
    "Wireless Controller": HidrawBluetoothDS4Device,
}
```

[Source](https://github.com/chrippa/ds4drv/issues/104)
