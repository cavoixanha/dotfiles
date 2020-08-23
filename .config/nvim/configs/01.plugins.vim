"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/nam/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/nam/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" NeoBundle 'scrooloose/nerdcommenter', { 'on':  'NERDTreeToggle' } 
NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'preservim/nerdcommenter'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'moll/vim-node'
NeoBundle 'vim-airline/vim-airline'

" syntax related
NeoBundle 'shougo/deoplete.nvim'
NeoBundle 'fishbullet/deoplete-ruby'
NeoBundle 'etordera/deoplete-rails'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'editorconfig/editorconfig-vim'

" ui related
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'mkitt/tabline.vim'
NeoBundle 'jbgutierrez/vim-better-comments'

NeoBundle 'tpope/vim-surround'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'konfekt/fastfold'
NeoBundle 'zhimsel/vim-stay'

NeoBundle 'mhinz/vim-startify'

NeoBundle 'tmux-plugins/vim-tmux-focus-events'
NeoBundle 'roxma/vim-tmux-clipboard'

" Rails dev
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'rlue/vim-fold-rspec'

" Nodejs
NeoBundle 'eliba2/vim-node-inspect'

" Helpers
NeoBundle 'mileszs/ack.vim'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
" NeoBundle 'epmatsw/ag.vim'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'Valloric/YouCompleteMe', { 'do': './install.py' }
NeoBundle 'sirver/UltiSnips'
NeoBundle 'honza/vim-snippets'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
