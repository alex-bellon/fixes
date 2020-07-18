# Git

### Find which commit something was changed in
#### By line
```shell
git blame -L 123,123 path/to/file
```
#### By term
```shell
git log -S 'search term' (-- file)
```

### Remove files that are now in the `.gitignore`
```shell
git rm -r --cached .
git add .
git commit -m "Removing all files in .gitignore"
```

### Undo a commit without undoing changes
```shell
git reset HEAD^
```

