# Install basic software
sudo apt-get -y install software-properties-common python-dev python-pip python3-dev python3-pip
sudo apt-get -y install curl zsh libpq-dev fcitx-unikey xclip  libevent-dev

# Install source code pro font( only install on relase branch )
[ -d /usr/share/fonts/opentype ] || sudo mkdir /usr/share/fonts/opentype
sudo git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git /usr/share/fonts/opentype/scp
sudo fc-cache -f -v

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install oh my zsh plugin
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Config for zsh-autosuggestions
echo "bindkey '^ ' autosuggest-accept" >> $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Change default shell to zsh
chsh -s /bin/zsh


# https://misc.flogisoft.com/bash/tip_colors_and_formatting
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Build tmux from source
# sudo apt-get install autogen automake libevent-dev libncurses5-dev


# install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable 

# install rails development
sudo apt-get -y install postgresql postgresql-contrib libxml2-dev libxslt-dev
gem install bundler

# Install docker compose 1.16.1
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.16.1/docker-compose-$(uname -s)-$(uname -m)"
sudo chmod +x /usr/local/bin/docker-compose


# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

########## Install Elixir and Erlang ############################
# Ubuntu Dependencies
sudo apt-get install build-essential git wget libssl-dev libreadline-dev libncurses5-dev zlib1g-dev m4 curl wx-common libwxgtk3.0-dev autoconf

# Erlang dependencies
sudo apt-get install libxml2-utils xsltproc fop unixodbc unixodbc-bin unixodbc-dev

# Make sure install asdf
#asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
#asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

#asdf install erlang 20.3
#asdf install elixir 1.6.4

#asdf global erlang 20.3
#asdf global elixir 1.6.4

# Fix error of inotify-tools
# echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
#################################################################

# Install neovim
pip3 install neovim
pip install neovim
gem install neovim

# Install Plug for neovim
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Ag 
sudo apt-get -y install silversearcher-ag


# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# more
sudo apt install -y unity-tweak-tool bleachbit

# Config extend monitor
# xrandr | grep 'HDMI1 connected' &&
#     xrandr --output eDP1 --auto --output HDMI1 --auto --right-of eDP1
# Install network manager for i3
# sudo apt-get install wicd 

# Disable touchpad while typing
# killall syndaemon
# syndaemon -i 4 -K -d
