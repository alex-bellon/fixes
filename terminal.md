# Terminal

## Kitty

### Set colors
- [Add colors to `kitty.conf`](https://sw.kovidgoyal.net/kitty/conf/#color-scheme)
- Add `allow_remote_control yes` to `kitty.conf`
- Run `kitty @set-colors --all --configured`

## See what is slowing down terminal startup

To see every command that runs during your shell's startup configuration, put
```shell
set -x
```
at the top and
```shell
set +x
```
at the bottom of both files `~/.profile` and `~/.bashrc`.

Then in a terminal, run:
```shell
$ bash --login
```
and see which command takes the most time.

[Source](https://askubuntu.com/questions/717961/shell-very-slow-to-load-ubuntu-14-04)

## `tmux`

### Have `tmux` start by default
```shell
if [ "$TMUX" = "" ]; then tmux; fi
```
[Source](https://unix.stackexchange.com/questions/41274/having-tmux-load-by-default-when-a-zsh-terminal-is-launched)

### Highlight and select text
Hold shift while selecting text

### Home and End keys don't work
Add to `.zshrc`:

```
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line
```

### Reload config
```shell
tmux source-file ~/.tmux.conf
```

## `'xterm-new': unknown terminal type`

```shell
# Run the following commands on the local machine's bash prompt
echo "export TERM=xterm-256color" >> ~/.bashrc
source ~/.bashrc
```

[Source](https://stackoverflow.com/questions/27052587/xterm-new-unknown-terminal-type)
