" for US keyboard
nnoremap ; :

" window
" nnoremap s <Nop>
" window move
" nnoremap sj <C-w>j
" nnoremap sk <C-w>k
" nnoremap sl <C-w>l
" nnoremap sh <C-w>h
" nnoremap sw <C-w>w
" window split
" nnoremap ss :<C-u>sp<CR>
" nnoremap sv :<C-u>vs<CR>
" window close
" nnoremap sq :q<CR>
" tab
nnoremap ts :tab split<CR>
nnoremap tn :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tp :tabprevious<CR>
nnoremap tf :tabfirst<CR>
nnoremap tw :tabclose<CR>
" Toggle NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" <C-c> to ESC
inoremap <C-c> <ESC>

" emmpet expand key
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" comment out (using tyru/caw.cim.git)
" nnoremap <C-_> <Plug>(caw:i:toggle)

" Needed for tmux and vim to play nice
map <Esc>[A <Up>
map <Esc>[B <Up>
map <Esc>[C <Up>
map <Esc>[D <Up>

" <C-q> opens documentation for php/perl function under cursor
function! BrowseDoc()
    if b:current_syntax == "php"
        ! open "http://ch2.php.net/manual-lookup.php?pattern=<cword>"
    elseif b:current_syntax == "perl"
        ! open http://perldoc.perl.org/search.html?q=<cword>
    elseif b:current_syntax == "cpp"
          let cname = tolower(cword);
        ! open file:///opt/qt-4.3.4/doc/html/<cname>
    else
        return
    endif
endfunction
vmap <C-q> :call BrowseDoc()^M^M

" neosnippet keymap
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" 自分用 snippet ファイルの場所 (任意のパス)
let g:neosnippet#snippets_directory = '~/.myvim/snippets/'
