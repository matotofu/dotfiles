# On migrating to new Linux environment
## Dotfiles management.
Repo and alias intialize.
- [tutorial on atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
- [original source on hacker news](https://news.ycombinator.com/item?id=11071754)
clone to an empty `$HOME`.
``` fish
   git clone --separate-git-dir=~/.cfg /path/to/repo ~
```
if `$HOME` is not empty.
``` fish
    git clone --separate-git-dir=$HOME/.cfg /path/to/repo $HOME/cfg-tmp
    cp ~/cfg-tmp/.gitmodules ~  # If you use Git submodules
    rm -r ~/cfg-tmp/
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

## Must have browser extensions
- Bitwarden
- uBlock Origin
- Privacy Badger
- Sound fixer
- EPUBReader
