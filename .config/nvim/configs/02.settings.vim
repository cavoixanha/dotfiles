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

" ----------------------- Config for LEADER KEY -------------------------------

" set leader to space
" let mapleader = ","
" let mapleader = "\<SPACE>"

map <C-o> :Files<CR>
map <leader>q <C-w>q
map <leader>t <C-w>v
map <leader>w :w<CR>
map <leader>pt :NERDTreeToggle<CR>
" map <leader>mru :CtrlPMRU 
map <leader>f :CtrlPMRU<CR>
map <leader>hh ^
map <leader>ll $
nnoremap <leader>ff :Ack<SPACE>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

" Shortcut to select tab
map <Leader>1 1gt
map <Leader>2 2gt
map <Leader>3 3gt

" For rails
map <Leader>c :Econtroller<SPACE>
map <Leader>db :e db/schema.rb<CR>
map <Leader>d <ESC>odebugger<ESC>
map <Leader>g :e Gemfile<CR>
map <Leader>m :Emodel<SPACE>
map <Leader>r :e config/routes.rb<CR>

" For git
map <Leader>gs :Gstatus<CR>

map <C-j> <C-y>,

" Use deoplete.
let g:deoplete#enable_at_startup = 1
