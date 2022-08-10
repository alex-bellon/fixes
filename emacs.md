# Emacs

- [conflicts of C-u and C-d with org-mode](https://github.com/doomemacs/doomemacs/issues/408)

### `file-missing Cannot open load file No such file or directory org-version.el`
```shell
/bin/doom build
```

[Source](https://github.com/doomemacs/doomemacs/issues/2089)

### How to migrate Markdown files to Emacs org mode

```shell
for f in *.md; do pandoc --wrap=preserve -f markdown -t org ${f} | sed -E "/^[[:blank:]]*:/d" > ${f%%.md}.org; done
```

[Source](https://emacs.stackexchange.com/questions/5465/how-to-migrate-markdown-files-to-emacs-org-mode-format)
