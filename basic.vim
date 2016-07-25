" 終了時にセッションを保存
au VimLeave * mks! ~/.vim.session

set nocompatible "vi互換モードを無効化
set number "行番号を表示
set backspace=indent,eol,start "バックスペースの挙動を通常にする

set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

set mouse=a "マウス操作を有効化 (xterm or gvim)
set clipboard=unnamed,autoselect
" Show statusline
set laststatus=2

" Backspace Newline
set backspace=2

" バッファタブをステータスライン内に表示する
let g:buftabs_in_statusline=1
" 現在のバッファをハイライト
let g:buftabs_active_highlight_group="Visual"

" カラースキームの設定
syntax enable
set t_Co=256
set background=dark
" colorscheme atom-dark-256
colorscheme hybrid

" lightline setting
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?"x":""}',
  \ }
  \ }

" 日本語ヘルプを優先表示。英語版を表示する場合は、検索時に@enを付加
set helplang& helplang=ja,en
" ヘルプをqで閉じる
autocmd FileType help nnoremap <buffer> q <C-w>c
set guifont=Ricty\ Diminished\ Discord:h16
