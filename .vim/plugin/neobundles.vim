set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
    filetype plugin indent on
    " Installation check.
    NeoBundleCheck

    if filereadable($HOME.'/.vimrc.bundle')
        source $HOME/.vimrc.bundle
    endif

    if filereadable($HOME.'/.vimrc.bundle.local')
        source $HOME/.vimrc.bundle.local
    endif
call neobundle#end()
