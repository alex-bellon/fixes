# Git

### Undo a commit without undoing changes

```
git reset HEAD^
```

### Remove files that are now in the `.gitignore`

```
git rm -r --cached .
git add .
git commit -m "Removing all files in .gitignore"
```
