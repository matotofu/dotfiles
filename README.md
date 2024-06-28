# On migrating to new Linux environment
## Dotfiles management.
Repo and alias intialize.
- [tutorial on atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
- [original source on hacker news](https://news.ycombinator.com/item?id=11071754)
clone to an empty `$HOME`.
```fish
   git clone --separate-git-dir=~/.cfg /path/to/repo ~
```
if `$HOME` is not empty.
```fish
    git clone --separate-git-dir=$HOME/.cfg /path/to/repo $HOME/cfg-tmp
    cp ~/cfg-tmp/.gitmodules ~  # If you use Git submodules
    rm -r ~/cfg-tmp/
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

## Before GUI
- download fonts
  - JetBrainMono
  - Hack Nerd Fonts
  - PragmataPro Mono
  - Twemoji fonts

## Basic GUI and Terminal
### fedora
``` fish
sudo dnf install dunst fish fontconfig foot fuzzel kanshi river Thunar yambar sawybg
```
and then clone this repo

## Basic Apps
- flatpak
  - flatseal
  - ungoogled chromium
  - logseq
  - mochi
  - spotify
  - discord
- imv
- mpv

## Browser
### Must have extensions
- [chromium web store](https://github.com/NeverDecaf/chromium-web-store)
- Bitwarden
- uBlock Origin
- Privacy Badger
- Sound fixer
- EPUBReader
### HVA & Wayland thing
./config/chromium-flags.conf`
```fish
--ozone-platform=wayland
--ignore-gpu-blocklist
--enable-zero-copy
--enable-features=VaapiVideoDecodeLinuxGL
```

## Daily usages setup
### Sound
### setup Github SSH
### login manager
### udiskies
### Thunar
#### custom actions
- open terimnal here `footclient -D %f`
- extract here `unar -f %n`
#### image and video preview
### Screenshot
dependencies
- wl-copy, grim, slupr, satty
```fish
#!/bin/fish

sh -c "grim -g \"$(slurp u-o -r -c '#ff0000ff')\" - | satty --copy-command wl-copy --filename - --fullscreen --output-filename ~/Pictures/Screenshots/satty-\"$(date '+%Y%m%d-%H:%M:%S')\".png"
```

## Manoonchai Keyboard and Twemoji fonts
- Install [Manoonchai Keyboard](https://manoonchai.com/)

## Doom emacs setup

## Development Environment 
### Docker
### Python
#### ML & AI
### LateX
- Evince
