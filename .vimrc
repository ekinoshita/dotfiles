"                                ___           ___           ___
"      ___                      /\  \         /\  \         /\__\
"     /\  \        ___         |::\  \       /::\  \       /:/  /
"     \:\  \      /\__\        |:|:\  \     /:/\:\__\     /:/  /
"      \:\  \    /:/__/      __|:|\:\  \   /:/ /:/  /    /:/  /  ___
"  ___  \:\__\  /::\  \     /::::|_\:\__\ /:/_/:/__/___ /:/__/  /\__\
" /\  \ |:|  |  \/\:\  \__  \:\~~\  \/__/ \:\/:::::/  / \:\  \ /:/  /
" \:\  \|:|  |   ~~\:\/\__\  \:\  \        \::/~~/~~~~   \:\  /:/  /
"  \:\__|:|__|      \::/  /   \:\  \        \:\~~\        \:\/:/  /
"   \::::/__/       /:/  /     \:\__\        \:\__\        \::/  /
"    ~~~~           \/__/       \/__/         \/__/         \/__/
"
"
" Powered by FIGlet ( $ figlet -f isometric2 vimrc )
"
" ========================================================================

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set splitright " 新しいウィンドウを右に開く
set wrapscan " 検索時にファイルの最後まで行ったら最初に戻る
set smartcase " 大文字小文字の両方が含まれている場合は大文字小文字を区別
set number
set showcmd  
set laststatus=2
set cmdheight=2
set statusline=%F%m%=[%Y]\[%{&fileencoding}]\[%{&ff}]\[%l/%c]
set fileformats=unix,mac,dos
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed

nnoremap ; :
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <c-a> ^
nnoremap <c-e> $
nnoremap tt :vne<CR>
nnoremap ,v :tabe ~/.vimrc<CR>
nnoremap ,r :source ~/.vimrc<CR>:NeoBundleInstall<CR>
nnoremap <C-L> :nohlsearch<CR>
nnoremap ,n :MyTabMoveRight<CR>
nnoremap ,N :MyTabMoveLeft<CR>
nnoremap ,q :QuickRun<CR>
nnoremap gf :vertical wincmd f<CR>
nnoremap <S-S> :NERDTree<CR>

inoremap <> <><Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>

" ファイル保存先を指定し、古いファイルを削除する(Rename)
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))

" Plugins
source $HOME/.vim/plugin/recognize_charcode.vim
source $HOME/.vim/plugin/neobundles.vim
source $HOME/.vim/plugin/unite_config.vim
source $HOME/.vim/plugin/jump2pm.vim
source $HOME/.vim/plugin/mytabmove.vim
source $HOME/.vim/plugin/smooth_scroll_config.vim
source $HOME/.vim/plugin/change_statusbar_color.vim
source $HOME/.vim/plugin/html5tags.vim

" for neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1

" for neomru.vim
let g:unite_source_grep_max_candidates = 200

" import from .mixivimrc
let OSTYPE = system('uname')
if OSTYPE == "Linux\n"
    source $HOME/.mixivimrc
endif
