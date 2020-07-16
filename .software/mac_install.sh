# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

# Install zsh
brew install zsh
chsh -s /bin/zsh

# Install prezto
chsh -s $(which zsh)
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

brew install git
brew install p7zip
brew install neovim
brew install rbenv

brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

brew install yarn


brew install zsh-autosuggestions

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

brew install the_silver_searcher

# Install lolcat
gem install lolcat --user-install



# linked apps
brew linkapps

# Fix some error
# compaudit | xargs chmod g-w
echo "**Memory Clean** ..."
