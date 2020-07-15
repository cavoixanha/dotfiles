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

# Install vim plug for neovim
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh

# # Neovim dependencies
# sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install ctags

echo "Install for deoplete, require install python3.7, after require install python3-minimal because gnome base on python3-minimal"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install python3.7
ls -l /usr/bin/python*
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2
sudo update-alternatives --config python3
pip3 install --user pynvim
echo "Don't install gnome terminal don't open"
sudo apt-get --reinstall install python3-minimal

# install xclip
sudo apt-get install -y xclip

echo "Everything done!!!"
