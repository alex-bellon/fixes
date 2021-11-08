# Git

### Change remote URL for a repository
```shell
git remote set-url origin new.git.url/here
```
[Source](https://stackoverflow.com/questions/2432764/how-to-change-the-uri-url-for-a-remote-git-repository)

### Find which commit something was changed in
#### By line
```shell
git blame -L 123,123 path/to/file
```
#### By term
```shell
git log -S 'search term' (-- file)
```

### Pull changes from master into branch
```shell
git pull origin master
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
