set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" List of plugins...

Plug 'mattn/emmet-vim' " emmet
" Plug 'Shougo/neocomplcache.git'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
"Plug 'Shougo/unite.vim.git'
Plug 'ctrlpvim/ctrlp.vim' " ctrlp.vim
Plug 'scrooloose/nerdtree' " ファイルをtree表示
Plug 'flazz/vim-colorschemes'
"Plug 'w0ng/vim-hybrid'
Plug 'itchyny/lightline.vim' " lightline
Plug 'tyru/caw.vim' " コメントアウト用
Plug 'tomtom/tcomment_vim' " コメントアウト
Plug 'itchyny/vim-pdf' " pdfのシンタックスハイライト改良版
Plug 'ConradIrwin/vim-bracketed-paste' " ペーストしても崩れない
Plug 'vim-jp/vimdoc-ja' " 日本語ドキュメント
"Plug 'vim-scripts/VimRepress' " WordPressに投稿
Plug 'terryma/vim-multiple-cursors' " 複数カーソル
Plug 'keith/tmux.vim' " .tmux.confをハイライト
Plug 'zah/nimrod.vim' " nim言語をハイライト
Plug 'pangloss/vim-javascript' " ECMAScript6対応
"Plug 'joonty/vdebug' " Vdebug
Plug 'udalov/kotlin-vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'miyakogi/seiya.vim' " :SeiyaEnable で背景を透明化する

call plug#end()

let g:seiya_auto_enable=1 " 初期状態で背景を透明化

" 補完の設定

let g:neocomplete#enable_at_startup = 1
" let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
