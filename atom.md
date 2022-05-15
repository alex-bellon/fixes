# Atom

## Atom not recognizing `ctrl + up/down` keystroke

- Check that other programs are not catching that keyboard shortcut

[Source](https://discuss.atom.io/t/why-keybindingsctrl-alt-up-down-not-work/19822/6)

## Completely Uninstall

```
sudo rm /usr/local/bin/atom
sudo rm /usr/local/bin/apm
rm -rf ~/atom
rm -rf ~/.atom
rm -rf ~/.config/Atom-Shell
sudo rm -rf /usr/local/share/atom/
```

[Source](https://stackoverflow.com/questions/23621181/how-to-uninstall-atom-text-editor-on-linux)

## Manually install package
- Clone from GitHub
- Navigate to directory
- `apm link`

## Publishing package not working: `Registering package in <repo> repository failed: That repo does not exist, isn't an atom package, or you do not have access`
Rename branch to `master`, not `main`

## Scroll past bottom

- Check box in Editor settings

[Source](https://medium.com/front-end-weekly/atom-editor-tips-1f0f71228f9c)
