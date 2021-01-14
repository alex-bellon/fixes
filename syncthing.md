# Syncthing

## `panic: runtime error: slice bounds out of range`

This happened to me because I installed `syncthing` straight from `apt` without adding the APT repository, so it was super out of date. To fix:

```shell
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

printf "Package: *\nPin: origin apt.syncthing.net\nPin-Priority: 990\n" | sudo tee /etc/apt/preferences.d/syncthing

sudo apt-get update
sudo apt-get install syncthing
```

### Sources

- [Syncthing APT tutorial](https://apt.syncthing.net/)
- [Relevant GitHub issue](https://github.com/syncthing/syncthing/issues/5651)
