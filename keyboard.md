# Keyboard

## Ctrl-Backspace and Ctrl-Delete in bash

If you want Ctrl+Backspace to erase the previous sequence of alphanumeric characters, put the following line in your `.inputrc`:
```
"\C-h": backward-kill-word
```

[Source](https://unix.stackexchange.com/questions/264791/ctrl-backspace-and-ctrl-delete-in-bash)

## Update `xmodmap`

```shell
xmodmap ~/.Xmodmap
```
