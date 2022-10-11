" sh4ndy9uff .vimrc

"--------------------------------------
" system setting
"--------------------------------------

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

"--------------------------------------
" view setting
"--------------------------------------

" hilight syntax
syntax on

" show line number
set number

" show maching char
set showmatch matchtime=1

" change indent rule
set cinoptions+=:0

" 2 line to command line
set cmdheight=2

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

" tab to space
set expandtab

" indent width
set shiftwidth=2

" set tab charactors
set softtabstop=2

" show tab at files
set tabstop=2

" unvisible toolbar
set guioptions-=T

" yank to clipboard
set guioptions+=a

" unvisible menubar
set guioptions-=m

" strong show at match char
set showmatch

" enable smartindent
set smartindent

" show title
set title

"--------------------------------------
" search setting
"--------------------------------------

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
" vim-plug setting
"--------------------------------------


