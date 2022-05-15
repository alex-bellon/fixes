# Git

### Change remote URL for a repository
```shell
git remote set-url origin new.git.url/here
```
[Source](https://stackoverflow.com/questions/2432764/how-to-change-the-uri-url-for-a-remote-git-repository)

### Copy commits from one branch to another
```shell
git cherry-pick <commit>
```
[Source](https://stackoverflow.com/questions/2474353/how-to-copy-commits-from-one-branch-to-another)

### Find which commit something was changed in
#### By line
```shell
git blame -L 123,123 path/to/file
```
#### By term
```shell
git log -S 'search term' (-- file)
```

### Merge main into branch
```shell
git checkout main
git pull
git checkout validator
git merge main
git push
```
[Source](https://www.togaware.com/linux/survivor/Git_Merge_Master_into.html)

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

### Rename git branch
```shell
git branch -m <new-name>
git push origin -u <new-name>
git checkout <old-name>
```

[Source](https://linuxize.com/post/how-to-rename-local-and-remote-git-branch/)

### Undo a commit without undoing changes
```shell
git reset HEAD^
```
