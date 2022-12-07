" sh4ndy9uff .vimrc

"--------------------------------------
" system setting
"--------------------------------------

" enable filetype indent/plugin detection
filetype plugin indent on

" use UTF-8 encoding
set encoding=utf-8

" use fileformat
set fileformats=unix,dos,mac

" no backup when overwrite
set nowritebackup

" no backup before overwrite
set nobackup

" enable virtual cursor
set virtualedit=block

" enable backspace on insert mode
set backspace=indent,eol,start

" use ZENKAKU
set ambiwidth=double

" enable wildmenu
set wildmenu

" no beep
set noerrorbells

" yank to clipboard
set clipboard+=unnamed

" yank to clipboard
set guioptions+=a

"--------------------------------------
" view setting
"--------------------------------------

" hilight syntax
syntax enable

" show line number
set number


" 2 line to command line
"set cmdheight=2

" always show status
set laststatus=2

" show command before do
set showcmd

" no omittion
set display=lastline

" command line history limit 10000
set history=10000

" visible line end space
set listchars=tab:^\ ,trail:~

" unvisible toolbar
set guioptions-=T

" unvisible menubar
set guioptions-=m

" show title
set title

"--------------------------------------
" indent setting
"--------------------------------------

" enable autoindent
set autoindent

" enable smartindent
set smartindent

" indent width
set shiftwidth=2

" change indent rule
"set cinoptions+=:0

" tab to space
set expandtab

" show tab at files
set tabstop=2

" set tab charactors
set softtabstop=2

"--------------------------------------
" search setting
"--------------------------------------

" strong show at match char
set showmatch

" show maching char
set showmatch matchtime=1

" ignore charactor case
set ignorecase

" ignore charactor case when search small char
set smartcase

" search top of file when scanned end of file
set wrapscan

" hilight search result
set hlsearch

" enable inclimental search
set incsearch

"--------------------------------------
" other setting
"--------------------------------------

"--------------------------------------
" keymap setting
"--------------------------------------
" <Leader> prefix key as space
let g:mapleader = "\<Space>"

" space + w as save
nnoremap <Leader>w :w<CR>

" elase hilight when ESC twice
nnoremap <Esc><Esc> :nohsearch<CR>

" space + . as open .vimrc
nnoremap <Leader>. :new ~/.vimrc<CR>

" Ctrl + j / Ctrl + k as jump near { or }
nnoremap <C-j> }
nnoremap <C-k> {

"--------------------------------------
" vim-plug setting
"--------------------------------------

call plug#begin()

Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'previm/previm'
Plug 'mattn/vim-maketable'
Plug 'vim-jp/vimdoc-ja'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-ref'
Plug 'Shougo/neocomplete.vim'
Plug 'marcus/rsense'
Plug 'supermomonga/neocomplete-rsense.vim'
Plug 'scrooloose/syntastic'
Plug 'yuku-t/vim-ref-ri'
Plug 'szw/vim-tags'
Plug 'tpope/vim-endwise'

call plug#end()
