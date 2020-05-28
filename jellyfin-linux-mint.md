# Install Jellyfin on Linux Mint

If you try to install Jellyfin with the "normal" Ubuntu instructions, you get this error:

```
E: The repository 'https://repo.jellyfin.org/ubuntu tina Release' does not have a Release file.
N: Updating from such a repository can't be done securely, and is therefore disabled by default.
N: See apt-secure(8) manpage for repository creation and user configuration details.
```

To fix it, just edit `etc/apt/sources.list.d/jellyfin.list` and change `tina` to `bionic` (or whatever the corresponding Ubuntu release name is for whatever Linux Mint release you're using).
