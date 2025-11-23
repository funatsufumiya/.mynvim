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

Plug 'chenasraf/text-transform.nvim', { 'tag': 'stable' } " snake_caseとCamelCaseの変換など
Plug 'elkasztano/nushell-syntax-vim'
Plug 'quabug/vim-gdscript'
Plug 'lambdalisue/vim-suda'

Plug 'thecodinglab/nvim-vlang'
Plug 'moevis/base64.nvim'
"Plug 'ovk/endec.nvim'
Plug 'MisanthropicBit/decipher.nvim'

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


function! UrlEncode(mystring)
let urlsafe = ""
for char in split(join(lines, "\n"), '.\zs')
    if matchend(char, '[-_.~a-zA-Z0-9]') >= 0
        let urlsafe = urlsafe . char
    else
        let decimal = char2nr(char)
        let urlsafe = urlsafe . "%" . printf("%02x", decimal)
    endif
endfor
"echo urlsafe
return urlsafe
endfunction

function! UrlEncodeAndReplace()
    " Yank the visually selected text into the default register
    " The 'silent!' prevents any messages from being shown
    silent! execute "normal! gv\"zy"

    " Get the yanked text from register 'z'
    let l:original = getreg('z')

    " Apply the UrlEncode function
    let l:encoded = UrlEncode(l:original)

    " Replace the selected text with the encoded string
    " `gv` reselects the last visual selection
    execute "normal! gv\"zc" . l:encoded . "\<Esc>"
endfunction

function! EncodeURIComponent() range
  let saved_reg = @"
  normal! gvy
  let selected_text = @"
  let encoded = system('node -e "process.stdout.write(encodeURIComponent(process.argv[1]))" -- ' . shellescape(selected_text))
  let @" = encoded
  normal! gv"_d"0P
  let @" = saved_reg
endfunction

if has('nvim')
    " luaでしかできない設定等
    lua dofile(vim.fn.expand('~/.mynvim/plugin_init.lua'))
endif
