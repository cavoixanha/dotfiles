alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

git clone --bare https://github.com/cavoixanha/dotfiles $HOME/.dotfiles

mkdir -p .dotfiles-backup
config checkout -f
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;

config checkout -f
config config status.showUntrackedFiles no

if [ ! -d "$HOME/.config/nvim" ]; then
  mkdir -p $HOME/.config/nvim
fi
# cp $HOME/.init.vim $HOME/.config/nvim/init.vim
# cp $HOME/.config/nvim/init.vim $HOME/.config/nvim/init.vim
# cp -r $HOME/.config/nvim/configs $HOME/.config/nvim/configs

# Install vim plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Neovim dependencies
brew install python3 # install python3 (required for neovim)
# Install pip3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user

# config neovim with python
pip3 install --user neovim

echo "Everything done!!!"
