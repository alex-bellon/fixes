# Put Program on rofi

[Create an `*.desktop` file and put it in `$HOME/.local/share/applications`](https://github.com/DaveDavenport/rofi/issues/326). That way you can set icons and other properties. For examples look through `/usr/share/applications`.

You can also just update the `.desktop` file for the app to point to the correct executable.

[Source](https://www.reddit.com/r/unixporn/comments/66dsdu/how_do_i_make_a_program_available_to_rofi/)

## Launch something from terminal

```
[Desktop Entry]
Version=1.0
Name=Terminal 2
Comment=Open Terminal with .bashrc2
Exec=bash -c 'bash --init-file $HOME/.bashrc2'
Icon=utilities-terminal
Terminal=true
Type=Application
Categories=Application;
```

[Source](https://askubuntu.com/questions/687582/desktop-file-to-open-terminal-with-an-alternative-prompt)
