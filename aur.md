# AUR

## gpg: keyserver receive failed: General error

I got this message while trying to install spotify from AUR, and was able to fix it by doing this:

```
cat /etc/pacman.d/gnupg/gpg.conf > ~/.gnupg/gpg.conf
vim ~/.gnupg/gpg.conf
```

and adding 

```
keyserver pool.sks-keyservers.net
```
