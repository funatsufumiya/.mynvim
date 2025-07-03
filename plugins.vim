set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')

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

Plug 'rust-lang/rust.vim'
Plug 'liquidz/vim-iced'

Plug 'bakpakin/janet.vim'
Plug 'luochen1990/rainbow'
Plug 'bakpakin/fennel.vim'

Plug 'Olical/conjure'

Plug 'https://github.com/funatsufumiya/cakelisp.vim'

Plug 'elkasztano/nushell-syntax-vim'
Plug 'quabug/vim-gdscript'
Plug 'lambdalisue/vim-suda'

call plug#end()

let g:seiya_auto_enable=1 " 初期状態で背景を透明化

" 補完の設定

let g:neocomplete#enable_at_startup = 1
" let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'janet': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'cakelisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'css': 0,
\		'nerdtree': 0,
\	}
\}
