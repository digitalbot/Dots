set encoding=utf-8                    " デフォルトエンコーディング

set nocompatible                      " vi互換なし
set scrolloff=5                       " スクロール時の余白確保
set textwidth=0                       " 一行に長い文章を書いていても自動折り返しをしない
set autoread                          " 他で書き換えられたら自動で読み直す
set noswapfile                        " スワップファイル作らない
set hidden                            " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start        " バックスペースでなんでも消せるように
set formatoptions=lmoq                " テキスト整形オプション，マルチバイト系を追加
set vb t_vb=                          " ビープをならさない
set whichwrap=b,s,h,l,<,>,[,]         " カーソルを行頭、行末で止まらないようにする
set showcmd                           " コマンドをステータス行に表示
set showmode                          " 現在のモードを表示
set modelines=0                       " モードラインは無効
set title
set backupskip=/tmp/*,/private/tmp/*  " バックアップしない
set nobackup                          " ようわからんが同上
syntax on
" OSのクリップボードを使用する
set clipboard+=unnamed
" ターミナルでマウスを使用できるようにする
set mouse=a
set guioptions+=a
set ttymouse=xterm2



set laststatus=2    " 常にステータスラインを表示
set ruler           "カーソルが何行目の何列目に置かれているか
"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END



set showmatch         " 括弧の対応をハイライト
set number            " 行番号表示
set list              " 不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:< " 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END



set autoindent   " 自動でインデント
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set tabstop=4    " tab幅
set expandtab



set incsearch
set hlsearch
" Esc二回押しでハイライト除去
nmap <ESC><ESC> ;nohlsearch<CR><ESC>



