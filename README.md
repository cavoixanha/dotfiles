# Config \*Unix (macOS & ArchLinux)

## Screenshot

### MACOS

![Mac_Iterm2](.mac-iterm2.png)

### ARCH LINUX

![Arch_Screenshot](.arch_screenshot.png)

## Install

To set up your development environment, run

```bash
  alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  curl -sSL https://raw.githubusercontent.com/kensupermen/dotfiles/master/.install_dotfiles.sh | sh
```

## Install FONT

```bash
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
```

## Install schema for iterm2

### Options 1

- Download: https://iterm2colorschemes.com/
- Install DRACULA schema

### Options 2

- Install https://github.com/MartinSeeler/iterm2-material-design

## NEOFETCH

```
brew install neofetch
```

## Todo

- [ ] Add README how to use
