# Pacman

## local is newer than __

```shell
sudo pacman-mirrors -f10
sudo pacman -Syyuu
```

[Source](https://archived.forum.manjaro.org/t/whats-all-these-warrnings/79542)

## Offline installation
```bash
pacman -U /root/Download/packagename.tar.gz
```

[Source](https://wiki.archlinux.org/title/offline_installation_of_packages)

## Program versions
```bash
for prog in firefox i3-gaps gtk2 gtk3 xorg-server; do
    pacman -Qi $prog | awk '/^Name/{name=$3} /^Version/{print name, $3}'
done
```
