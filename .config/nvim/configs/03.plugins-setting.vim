" deoplete
"set completeopt=longest,menuone
"set completeopt=longest,menu,menuone
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
" let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#max_list = 5
" let g:deoplete#omni#functions = {}
" let g:deoplete#sources = {}
" let g:deoplete#enable_smart_case = 1
" let g:AutoPairsMapCR=0
" let g:deoplete#enable_camel_case = 1
" let g:deoplete#skip_chars = ['(', ')', '<', '>']
" " Movement within 'ins-completion-menu'
" imap <expr><C-j>   pumvisible() ? "\<Down>" : "\<C-j>"
" imap <expr><C-k> pumvisible() ? "\<Up>" : "\<C-k>"

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

" neomake
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_jsx_enabled_makers = ['eslint']
" let g:neomake_error_sign = {'text': 'xx'}
" let g:neomake_warning_sign = {'text': '!!'}

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
let g:UltiSnipsSnippetsDir="~/.snippets/"
inoremap <C-Space> <c-r>=UltiSnips#ExpandSnippet()<cr>

" vim-javascript
let g:javascript_plugin_flow = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

" " -------------- Fix auto insert _Plug_ of vim-multiple-cursors and deoplete ----------
" " Called once right before you start selecting multiple cursors
" function! Multiple_cursors_before()
"   if exists(':NeoCompleteLock')==2
"     exe 'NeoCompleteLock'
"   endif
" endfunction
" 
" " Called once only when the multiple selection is canceled (default <Esc>)
" function! Multiple_cursors_after()
"   if exists(':NeoCompleteUnlock')==2
"     exe 'NeoCompleteUnlock'
"   endif
" endfunction
" " ----------------------------------------------------------------------------------------

" Autocommands
" if has("autocmd")
" 
"   " disable comment continuation
"   autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" 
"   " set neomake's eslint path to the local eslint, and enable it as a maker
"   " autocmd BufEnter *.js,*.jsx let b:neomake_javascript_eslint_exe = nrun#Which('eslint')
"   autocmd! BufEnter,BufWritePost * Neomake
" 
"   " better syntax highlighting
"   autocmd BufNewFile,BufRead *eslintrc,*babelrc setlocal syntax=json
" 
"   " Treat .md files as Markdown
"   autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
" 
" endif

" Searching
if executable('ag')

  " use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " define Ag command
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

  " bind \ to grep shortcut
  "nnoremap \ :Ag<SPACE>
  nnoremap \ :Ack!<SPACE>
endif

" Save Vim
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_session_dir = '~/.vim/session'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" xclip
set clipboard+=unnamedplus
