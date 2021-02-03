# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade

# Install Cask
tap 'caskroom/cask'

brew install ack
brew install cowsay
brew install fortune
brew install figlet
brew install git
brew install git-flow
brew install p7zip
brew install tmux
brew install tree
brew install vim
brew install zsh
brew install zsh-completions
brew install nodejs
brew install ctags


brew cask install google-chrome

# Remove outdated versions from the cellar.
brew cleanup
