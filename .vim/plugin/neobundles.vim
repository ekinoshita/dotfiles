set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype plugin indent on

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif

" My Bundles here:

NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle "Shougo/vimproc.vim",
            \ {'build': {
            \    'windows': 'make -f make_mingw64.mak',
            \    'mac': 'make -f make_mac.mak',
            \    'unix': 'make -f make_unix.mak'
            \ }}
NeoBundle 'nakatakeshi/jump2pm.vim'
NeoBundle 'yonchu/accelerated-smooth-scroll'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'wookiehangover/jshint.vim'
NeoBundle 'stephpy/vim-yaml'
" NeoBundle 'Kuniwak/vim-prove-syntax'

" css/javascript/html5

NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'othree/html5.vim'

" markdown
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'

" colorschemes here:

source $HOME/.vim/plugin/colorscheme.vim
