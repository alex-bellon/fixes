# Vim

### Map Ctrl-Backspace to delete previous word

Add to `.vimrc`:
```
" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>
```
[Source](https://vim.fandom.com/wiki/Map_Ctrl-Backspace_to_delete_previous_word)

### Write as `sudo` when you opened the file without `sudo`

`:w !sudo tee %`
