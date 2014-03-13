# Git Stuff
* Useful commands
* Git extensions
* Git GUI tools
* Resources for learning git


## Useful commands
Mostly stuff that is not directly suited for making an alias, or where I just haven't done it yet.

## Stashing
### Get dates for stashes:

`git stash list --date=local`

should print something like:

```
stash@{Thu Mar 21 10:30:17 2013}: WIP on master: 2ffc05b Adding resource
```

#### Show stash
`git show stash@{3} -w --word-diff=color --ignore-space-at-eol`

## Ignoring etc.
### Untrack files from repo, but keep file
`git rm --cached filename`
### Keep in repo, but assume unchanged
`git update-index --assume-unchanged [path]`

Revert with:

`git update-index --no-assume-unchanged [path]`

From help page: *makes Git omit any checking and assume the path has not changed.*

### skip-worktree
`git update-index --skip-worktree manifest.json`

From help page: *When reading an entry, if it is marked as skip-worktree, then Git pretends its working directory version is up to date and read the index version instead.*

## Repo archaeology
Find commits that affected the code that is now on line 42:
`git log --topo-order --graph -u -L 42,42:README.md`



## Git extensions that I use
* git extras
* git achievements
* hub (installed, but not aliased to git as they suggest, as my git aliases git-achievements
* git-up
* gitall
* tig


## Git GUI tools
My favourite by far is SourceTree. For some special hardcore cases I go for `gitk`.
### Tip for starting gitk showing only some branches
`gitk --branches="fr*" &`

starts gitk, but only shows matching branches. Useful when woking with a shared repository where only some branches are (currently) relevant for you.

## Resources for learning git
* githug
* Learn Git Branching (online)


