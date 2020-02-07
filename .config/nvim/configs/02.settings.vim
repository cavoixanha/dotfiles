" Required:
filetype plugin indent on
" Solarized stuff
let g:solarized_termtrans = 1
let g:solarized_teamcolors = 256
set background=dark
colorscheme solarized

set ruler
" set number
set cursorline

set guifont=Inconsolata\ for\ Powerline:h15
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
set laststatus=2
" let g:airline#extensions#tabline#enabled = 1
set encoding=utf-8
set t_Co=256

set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8

let mapleader = ","
" let g:ackprg = 'ag --vimgrep'
"if executable('ag')
"  let g:ackprg = 'ag --vimgrep'
"endif
let g:mapleader = ","
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:angular_source_directory = 'www-dev/js'
let g:angular_test_directory = 'test/units'
let g:angular_filename_convention = 'titlecased'

" set tabstop=2 " space mỗi lần tab
" set softtabstop=0
" set shiftwidth=2
set tabstop=2 shiftwidth=2 expandtab

" Map Esc to jj
:imap jj <Esc>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h
