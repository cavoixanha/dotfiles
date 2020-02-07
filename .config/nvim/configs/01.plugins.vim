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
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" NeoBundle 'scrooloose/nerdcommenter', { 'on':  'NERDTreeToggle' } 
NeoBundle 'scrooloose/nerdtree'
" NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'preservim/nerdcommenter'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-rails'
NeoBundle 'burnettk/vim-angular'
NeoBundle 'moll/vim-node'
NeoBundle 'vim-airline/vim-airline'

NeoBundle 'mileszs/ack.vim'
NeoBundle 'neoclide/coc.nvim', 'release', { 'build': { 'others': 'git checkout release' } }
NeoBundle 'epmatsw/ag.vim'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'Valloric/YouCompleteMe', { 'do': './install.py' }

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