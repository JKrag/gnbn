# Git Stuff
* Useful commands
* Git extensions
* Git GUI tools
* Resources for learning git


## Useful commands
Mostly stuff that is not directly suited for making an alias, or where I just haven't done it yet.

### Stash
#### Get dates for stashes:

`git stash list --date=local`

should print something like:

```
stash@{Thu Mar 21 10:30:17 2013}: WIP on master: 2ffc05b Adding resource
```

#### Show stash
`git show stash@{3} -w --word-diff=color --ignore-space-at-eol`

### Ignoring etc.
#### Untrack files from repo, but keep file
`git rm --cached filename`
#### Keep in repo, but assume unchanged
`git update-index --assume-unchanged [path]`

Revert with:

`git update-index --no-assume-unchanged [path]`

## Git extensions that I use
* git extras
* git achievements
* hub (installed, but not aliased to git as they suggest, as my git aliases git-achievements
* git-up
* gitall
* tig


## Git GUI tools
My favourite by far is SourceTree. For some special hardcore cases I go for `gitk`.

## Resources for learning git
* githug
* Learn Git Branching (online)


