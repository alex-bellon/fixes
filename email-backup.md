# Automatic Email Backup

## First time setup

First, install `offlineimap` (backup) and `notmuch` (interfacing with backup). Then, create an `~/.offlineimaprc` file that looks like this:

```
[general]
ui = ttyui
accounts = gmail
pythonfile = ~/.offlineimap/password.py # File with password

[Account gmail]
localrepository = gmail-local
remoterepository = gmail-remote
postsynchook = notmuch new

[Repository gmail-local]
type = Maildir
localfolders = ~/mail/gmail # Or wherever you want to put it

[Repository gmail-remote]
type = Gmail
remoteuser = <email>@gmail.com
remotepasseval = password # Name of the variable storing the password in the pythonfile
sslcacertfile = /etc/ssl/certs/ca-certificates.crt
ssl_version = tls1_2
```

The contents of the `~/.offlineimap/password.py` file should look like this:

```python
password = "<see below for which password to use>"
```

If your Gmail account has 2FA turned off, you should enable [less secure apps](https://support.google.com/accounts/answer/6010255?hl=en) and then put your account password in the Python file. 

If your Gmail account has 2FA turned on, you need to generate a specific [app password](https://support.google.com/accounts/answer/185833?hl=en) and then put that password into the Python file (NOT your account password). You may also have to [unlock Captcha](https://accounts.google.com/DisplayUnlockCaptcha) to get it to work. 

You can then run `notmuch` to configure `notmuch`, and then run `offlineimap -o` to start backing up all your emails.

If you want this to happen daily, you can make a cronjob that will do it with `crontab -e`:

```
0 0 * * * offlineimap -o -u quiet
```

## Adding another account

If you want to add another account, make sure to
- Add the name of the new account to the `accounts` field of `[general]` (comma separated) in `.offlineimaprc`
- Add a new line to the `password.py` Python file with a new variable for the new account password
- Add new `[Account <name>]`, `[Repository <name>-local]`, `[Repository <name>-remote]` sections to `.offlineimaprc`
- Edit the `notmuch` configuration to add the additional email address using `notmuch setup`

### Sources

- [How to backup your email](https://www.mrlim.com/2020/12/how-to-backup-your-email/)
- [Offlineimap, Gmail and Miutt tutorial](http://www.mdlerch.com/2014/14-11-offlineimap-gmail-and-mutt-tutorial.html)
