" NeoBundle Plugins...

NeoBundle 'mattn/emmet-vim' " emmet
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'ctrlpvim/ctrlp.vim' " ctrlp.vim
NeoBundle 'scrooloose/nerdtree' " ファイルをtree表示
NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'itchyny/lightline.vim' " lightline
"NeoBundle 'tyru/caw.vim' " コメントアウト用
NeoBundle 'tomtom/tcomment_vim' " コメントアウト
NeoBundle 'itchyny/vim-pdf' " pdfのシンタックスハイライト改良版
NeoBundle 'ConradIrwin/vim-bracketed-paste' " ペーストしても崩れない
NeoBundle 'vim-jp/vimdoc-ja' " 日本語ドキュメント
"NeoBundle 'vim-scripts/VimRepress' " WordPressに投稿
NeoBundle 'terryma/vim-multiple-cursors' " 複数カーソル
NeoBundle 'keith/tmux.vim' " .tmux.confをハイライト
NeoBundle 'joonty/vdebug' " Vdebug

let g:neocomplete#enable_at_startup = 1
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
