set nocompatible
filetype off

if has('vim_starting')
  set rtp+=$HOME/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" ここからNeoBundleでプラグインを設定 =============

call neobundle#begin(expand('~/.vim/bundle'))
source $HOME/.myvim/plugins.vim
call neobundle#end()

" End of plugin =================================

filetype plugin indent on
