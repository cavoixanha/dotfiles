let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3.7'

" Required:
filetype plugin indent on
" Solarized stuff
let g:solarized_termtrans = 1
let g:solarized_teamcolors = 256
set background=dark
" tabline - colorscheme
augroup MyColors
    autocmd!
    autocmd ColorScheme * hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
                      \ | hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
                      \ | hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
                      " \ | highlight Visual cterm=NONE ctermbg=76 ctermfg=16 gui=NONE guibg=#5fd700 guifg=#000000
                      " \ | highlight StatusLine cterm=NONE ctermbg=231 ctermfg=160 gui=NONE guibg=#ffffff guifg=#d70000
                      " \ | highlight Normal cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
                      " \ | highlight NonText cterm=NONE ctermbg=17 gui=NONE guibg=#00005f
augroup END
" hi clear TabLine
" hi clear TabLineFill
" hi clear TabLineSel
colorscheme solarized
let g:tablineclosebutton=1
" hi clear
" tabline - colorscheme
" hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE

set ruler
set number
set cursorline
set guioptions-=e
set guitablabel=\[%N\]\ %t\ %M
" set guitablabel=%t

" background processes
set autoread                          " update file when changed outside of vim
set autoindent                        " copy indentation from the previous line for new line
set clipboard=unnamed                 " use native clipboard
"set clipboard+=unnamedplus
set history=200                       " store last 200 commands as history
set lazyredraw                        " no unneeded redraws
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles
set nowritebackup                     " don't save a backup while editing
set ttyfast                           " indicates a fast terminal connection
set undodir=~/.config/nvim/undodir    " set undofile location
set undofile                          " maintain undo history between sessions
set undolevels=1000                   " store 1000 undos

" folding
set foldmethod=indent                 " fold based on markers
set nofoldenable                      " disable folds until `zc` or `zM` etc is used
set foldcolumn=3
" folding - colorscheme
hi FoldColumn ctermfg=216
hi FoldColumn ctermbg=black
hi Folded ctermfg=216
hi Folded ctermbg=black
au FileType ruby setlocal foldmethod=indent foldnestmax=4 foldlevelstart=1

" " interaction
" set backspace=2                       " make backspace work like most other apps
" set mouse=a                           " enable mouse support
" set mousehide                         " hide the mouse cursor while typing
" set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too
" 
" " searching
" set hlsearch                          " highlight search matches
" hi Search guibg=LightBlue
" set ignorecase                        " set case insensitive searching
" set incsearch                         " find as you type search
" set smartcase                         " case sensitive searching when not all lowercase

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

"let mapleader = ","
" let g:ackprg = 'ag --vimgrep'
"if executable('ag')
"  let g:ackprg = 'ag --vimgrep'
"endif
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:angular_source_directory = 'www-dev/js'
let g:angular_test_directory = 'test/units'
let g:angular_filename_convention = 'titlecased'

" set foldmethod=syntax
" foldmethod=manual
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 0 " 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
" let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
let g:ruby_fold = 1
let g:ruby_foldable_groups = 'def'  " 処理を減らして軽く
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

" set tabstop=2 " space mỗi lần tab
" set softtabstop=0
" set shiftwidth=2
set tabstop=2 shiftwidth=2 expandtab

" text appearance
set list                              " show invisible characters
" set listchars=tab:>·,trail:·,nbsp:¬   " but only show useful chaaracters
set listchars=tab:>·,trail:·,nbsp:¬   " but only show useful chaaracters
set nowrap                            " disable line wrapping

" Map Esc to jj
:imap jj <Esc>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" #----- Keys settings -----#
" # set Ctrl-a as the default prefix key combination
" # and unbind C-b to free it up
" set -g prefix C-a
" unbind C-b
" # use send-prefix to pass C-a through to application
" bind C-a send-prefix
" 
" bind C-l send-keys 'C-l'
" 
" # reload ~/.tmux.conf using PREFIX r
" bind r source-file ~/.tmux.conf \; display "Reloaded!"
" 
" # map Vi movement keys as pane movement keys
" bind h select-pane -L
" bind j select-pane -D
" bind k select-pane -U
" bind l select-pane -R
" 
" # use PREFIX | to split window horizontally and PREFIX - to split vertically
" bind \ split-window -h
" bind / split-window -v
" 
" # resize panes using PREFIX H, J, K, L
" bind H resize-pane -L 5
" bind J resize-pane -D 5
" bind K resize-pane -U 5
" bind L resize-pane -R 5

" targbar
nmap <F8> :TagbarToggle<CR>

" Vim tab
nnoremap <F5> :SLoad<CR>
nnoremap <F6> :SClose<CR>
nnoremap <F7> :SSave<CR>

" Insert debug line in js file
" map <F9> <ESC>oconsole.log();<ESC>

" Mappings to toggle folds
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <leader>. :CtrlPTag<CR>
" ----------------------- Config for LEADER KEY -------------------------------

" set leader to space
" let mapleader = ","
let mapleader = "\<SPACE>"

map <C-o> :Files<CR>
map <leader>sc :Files<CR> scss<Home>
map <leader>js :Files<CR> js<Home>
map <leader>pa :Files<CR> partials<Home>

map <leader>q <C-w>q
map <leader>t <C-w>v
map <leader>w :w<CR>
map <leader>pt :NERDTreeToggle<CR>
" map <leader>mru :CtrlPMRU 
map <leader>f :CtrlPMRU<CR>
map <leader>hh ^
map <leader>ll $
nnoremap <leader>ff :Ack<SPACE>
nnoremap <leader>fc :nohlsearch<CR>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Shortcut to select tab
map <Leader>1 1gt
map <Leader>2 2gt
map <Leader>3 3gt

" vim
noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>

" Tabs
map <Leader>b :tabs<CR>
nnoremap <F3> :tabprevious<CR>
nnoremap <F4> :tabnext<CR>

" For rails
map <Leader>c :Econtroller<SPACE>
map <Leader>db :e db/schema.rb<CR>
map <Leader>d <ESC>odebugger<ESC>
map <Leader>g :e Gemfile<CR>
map <Leader>m :Emodel<SPACE>
map <Leader>r :e config/routes.rb<CR>
map <Leader>rv :e config/routes/v2.rb<CR>
map <Leader>rw :e config/routes/web.rb<CR>

" For git
map <Leader>gs :Gstatus<CR>

map <C-j> <C-y>,

" Use deoplete.
let g:deoplete#enable_at_startup = 1

xnoremap iz :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zv[z<cr>
xnoremap az :<c-u>FastFoldUpdate<cr><esc>:<c-u>normal! ]zV[z<cr>

