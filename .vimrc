set nocompatible
set backspace=2
set encoding=utf-8
set fileencoding=utf-8
filetype off

"---------= VUNDLE PLUGIN =---------

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

":PluginList       - lists configured plugins
":PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
":PluginSearch foo - searches for foo; append `!` to refresh local cache
":PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"-see :h vundle for more details or wiki for FAQ
"-Put your non-Plugin stuff after this line


"--------= HIGHLIGHT EXCESS ON LINE =---------

augroup vimrc_autocmds
	autocmd!
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%160v.*/
	autocmd FileType python set nowrap
	augroup END

	
"---------= PYTHON MODE =----------

" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)


"-------= POWERLINE SETUP =-------------

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline
"set guifont=DejaVu\ Sans\ Mono
set laststatus=2


"-------= SHORTCUTS =-------------

map <F2> :NERDTreeToggle<CR>
map <F3> :BundleInstall<CR>

let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ["pep8","pyflakes"]

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" Don't autofold code
let g:pymode_folding = 0



"--------= FIRULA =----------

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>

" Automatically change window's cwd to file's dir
set autochdir

set tabstop=4
set shiftwidth=4
set expandtab

set bs=2
set ts=4
set sw=4
set number
set ruler
set term=xterm-256color

"-----------= SOLARIZED =-----------
syntax enable
"set background=light
"colorscheme solarized

