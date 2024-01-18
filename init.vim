" sh4ndy9uff's init.vim (it has justeonly possibility)

" Normal Mode

noremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存
noremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>   " fern呼び出し

" Insert Mode

inoremap <silent> jj <ESC>:<C-u>w<CR>                          " InsertMode抜けて保存

" Insert mode movekey bind

inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting

set encoding=utf-8

" editer setting

syntax on                                                       " シンタックスハイライト
set smartindent                                                 " 次の行のインデントを自動増減
set noswapfile                                                  " スワップファイルを作成しない
set showmatch matchtime=1                                       " 対応したカッコやブレース表示
set cinoptions+=:0                                              " インデント方法の変更
set cmdheight=2                                                 " ステータス行を常に表示
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完

" cursor setting
" set ruler                                                       " カーソルの位置表示
" set cursorline                                                  " カーソルハイライト

" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅

" jetpack add-on setting

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'https://github.com/dense-analysis/ale' "syntax checking and semantic errors
Jetpack 'junegunn/fzf.vim' "fuzzy finder
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' } "language server protocol
Jetpack 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Jetpack 'nvim-lualine/lualine.nvim' "configure statusline
Jetpack 'nvim-tree/nvim-web-devicons' "icons for lualine
Jetpack 'rcarriga/nvim-notify' "animated notification
Jetpack 'folke/noice.nvim' "nice notice
Jetpack 'MunifTanjim/nui.nvim'
Jetpack 'lambdalisue/fern.vim' "filer but not working...?
Jetpack 'cohama/lexima.vim' "kakko toziru
"Jetpack 'vlime/vlime', { 'rtp': 'vim' } "commom lisp hum...?
"Jetpack 'dracula/vim', { 'as': 'dracula' } "a dark theme for vim
"Jetpack 'tpope/vim-fireplace', { 'for': 'clojure' } "REPL test unit ...?
call jetpack#end()

" lua setup
lua require('lualine').setup()


