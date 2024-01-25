" sh4ndy9uff .vimrc

"--------------------------------------
" system setting
"--------------------------------------

" disable swap file
set noswapfile

" disable backup file
set nobackup

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

" space + vimrc as call .vimrc
nnoremap <leader>vimrc :edit $MYVIMRC<CR>

" jjでインサートモードを抜け、同時に保存
inoremap jj <Esc>:w<CR>

" space + w as save
nnoremap <Leader>w :w<CR>

" elase hilight when ESC twice
nnoremap <Esc><Esc> :nohsearch<CR>

" space + . as open .vimrc
nnoremap <Leader>. :new ~/.vimrc<CR>

" Ctrl + j / Ctrl + k as jump near { or }
nnoremap <C-j> }
nnoremap <C-k> {

" Ctrl+nでファイルツリーを表示/非表示する
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>


colorscheme codedark

"--------------------------------------
" vim-plug setting
"--------------------------------------

call plug#begin()

" sort charactor, remember gaip= gaip*|
Plug 'junegunn/vim-easy-align'

" iikanzi status bar *suspended
"Plug 'itchyny/lightline.vim'

" fazzy finder hmm...?
"Plug 'junegunn/fzf'

" markdown preview
"Plug 'previm/previm'

" make table on markdown
"Plug 'mattn/vim-maketable'

" vim docment to japanese language
Plug 'vim-jp/vimdoc-ja'

" file tree *suspended
"Plug 'scrooloose/nerdtree'

" refalence on vim *need text browser *suspended
"Plug 'thinca/vim-ref'

" complete with lua *suspended
"Plug 'Shougo/neocomplete.vim'

" ruby complete *suspended
"Plug 'marcus/rsense'
"Plug 'supermomonga/neocomplete-rsense.vim'

" file syntax check and like IDE
"Plug 'scrooloose/syntastic'

" ruby refarence
"Plug 'yuku-t/vim-ref-ri'

" tag genetate...?
"Plug 'szw/vim-tags'

" autocomplete do...end
Plug 'tpope/vim-endwise'

" iikanzi status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'

" file tree
Plug 'lambdalisue/fern.vim'

" git icon on file tree
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
" hilight git comittable
Plug 'airblade/vim-gitgutter'

call plug#end()

"" vim-airline
" view tabline
let g:airline#extensions#tabline#enabled = 1

" status line setting
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ ['z']
      \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
" no ingigate if not change
let g:airline#extensions#hunks#non_zero_only = 1

" tabline setting
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme = 'codedark'

let g:fern#renderer = 'nerdfont'

" coloring fern icons
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
augroup END

"" git操作
" g]で前の変更箇所へ移動する
nnoremap g[ :GitGutterPrevHunk<CR>
" g[で次の変更箇所へ移動する
nnoremap g] :GitGutterNextHunk<CR>
" ghでdiffをハイライトする
nnoremap gh :GitGutterLineHighlightsToggle<CR>
" gpでカーソル行のdiffを表示する
nnoremap gp :GitGutterPreviewHunk<CR>
" 記号の色を変更する
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red

"" 反映時間を短くする(デフォルトは4000ms)
set updatetime=250

"=======================================
" vim-easy-align
"=======================================
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

