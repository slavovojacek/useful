### Gets stats on against last commit.
git diff HEAD --stat

### Merges branch without fast-forward, forces commit message
git merge <branch> --no-ff

### After changes have been made...
git stash

# Do some other stuff here, like switch branches, merge other changes, etc.

### Re-apply the changes
git stash pop

### Delete branch locally
git branch -d newfeature

### Delete branch remotely
git push origin :newfeature

### Create a Tag
git tag <tagName>

### Delete a tag
git tag -d <tagName>

### Push Tags
git push --tags

### Get to a state before changes

# removes staged and working directory changes
git reset --hard
# remove untracked files
git clean -f -d
# CAUTION: as above but removes ignored files like config.
git clean -f -x -d

### GOD's command: Forever remove files or folders from history

git filter-branch --index-filter \
'git rm -r --cached --ignore-unmatch <file/dir>' HEAD

rm -rf .git/refs/original/ && \
git reflog expire --all && \
git gc --aggressive --prune