let mapleader = ','
set encoding=utf-8
set mouse=a
set bs=2
"Quicksave
noremap <C-Z> :update<CR>
inoremap <C-Z> <C-O>:update<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
noremap <Leader>E :qa!<CR> 'quit all window:
vnoremap <Leader>s :sort<CR>
nmap ,n :NERDTreeFind<CR>

set t_Co=256

filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" let Vundle manage Vundle
" " required! 
"Plugin 'bling/vim-airline'
"Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'klen/python-mode'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'tpope/vim-fugitive'
"call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'gmarik/Vundle.vim'
Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }



call plug#end()
"color scheme
filetype plugin indent on
syntax on
let g:airline#extensions#tabline#enabled = 1





let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'luna'
set number "show line numbers
set tw=150 "width of document
set fo-=t "dont auto wrap text when typing
set colorcolumn=151
highlight ColorColumn ctermbg=233



"??
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"make search case sensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"nerd tree shortcut
map <F2> :NERDTreeToggle<CR>
" Python-mode
" " Activate rope
"  Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator modes)
" " ]]            Jump on next class or function (normal, visual, operator modes)
" " [M            Jump on previous class or method (normal, visual, operator modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
"
 " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
let g:pymode_lint_write = 1
"
" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

colorscheme molokai
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_lint_on_fly = 1
" Don't autofold code
let g:pymode_folding = 0
