" deoplete
set completeopt=longest,menuone
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 5
let g:deoplete#omni#functions = {}
let g:deoplete#sources = {}
let g:deoplete#enable_smart_case = 1
let g:AutoPairsMapCR=0
let g:deoplete#enable_camel_case = 1
let g:deoplete#skip_chars = ['(', ')', '<', '>']
" Movement within 'ins-completion-menu'
imap <expr><C-j>   pumvisible() ? "\<Down>" : "\<C-j>"
imap <expr><C-k> pumvisible() ? "\<Up>" : "\<C-k>"

"NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=1

" FZF
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~40%' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Searching
" if executable('ag')
" 
"   " use ag over grep
"   set grepprg=ag\ --nogroup\ --nocolor
" 
"   " define Ag command
"   command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" 
"   " bind \ to grep shortcut
"   nnoremap \ :Ag<SPACE>
" 
" endif
