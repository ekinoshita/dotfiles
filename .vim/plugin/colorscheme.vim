NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'sjl/badwolf'
NeoBundle 'jnurmine/Zenburn'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'dsolstad/vim-wombat256i'
NeoBundle 'flazz/vim-colorschemes'

" solarized settings
" ------------------------------
let g:solarized_termcolors=256
" ------------------------------

syntax on
set t_Co=256
set background=dark

if has("mac")
    colorscheme solarized
elseif has("unix")
    colorscheme wombat256mod
endif

" vimdiffの色設定
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7
