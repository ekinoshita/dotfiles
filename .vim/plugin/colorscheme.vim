NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'

" solarized settings
" ------------------------------
let g:solarized_termcolors=256
" ------------------------------

syntax on
set background=dark
colorscheme jellybeans

" vimdiffの色設定
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7
