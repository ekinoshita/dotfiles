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
" Drawed by FIGlet ( $ figlet -f isometric2 vimrc )
"
" ========================================================================

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set splitright " 新しいウィンドウを右に開く
set incsearch
set wrapscan " 検索時にファイルの最後まで行ったら最初に戻る
set smartcase " 大文字小文字の両方が含まれている場合は大文字小文字を区別
set number
set cursorline
set showcmd 
set cmdheight=2
set fileformats=unix,mac,dos
set mouse=a
set ttymouse=xterm2
set clipboard+=unnamed,autoselect
set noerrorbells
set visualbell t_vb=
set t_Co=256
if exists('&ambiwidth')
  set ambiwidth=double " ●■→などで表示が崩れないようにする
endif
set diffopt=filler,iwhite " vimdiffしたときに空白文字を無視する
set hlsearch

" status line setting
set laststatus=2
set noshowmode

" Key Mapping
let g:mapleader = ','

noremap <c-a> ^
noremap <c-e> $

nnoremap ; :
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap tt :vne<CR>
nnoremap <Leader>v :tabe ~/.vimrc<CR>
nnoremap <Leader>r :source ~/.vimrc<CR>:NeoBundleInstall<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <Leader>n :MyTabMoveRight<CR>
nnoremap <Leader>N :MyTabMoveLeft<CR>
nnoremap <Leader>q :QuickRun<CR>
nnoremap gf :vertical wincmd f<CR>
nnoremap <S-S> :NERDTree<CR>
nnoremap <Leader>S :SyntasticReset<CR>

inoremap < <><Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>

" ファイル保存先を指定し、古いファイルを削除する(Rename)
command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))

" スワップファイル,バックアップファイル,viminfoの出力先を変更
set directory=/tmp
set backupdir=/tmp
set viminfo+=n/tmp

" yamlファイルを開くときにsyntax off
" autocmd FileType yaml set ft=nosyntax

" Plugins
source $HOME/.vim/plugin/recognize_charcode.vim
source $HOME/.vim/plugin/neobundles.vim
source $HOME/.vim/plugin/colorscheme.vim
source $HOME/.vim/plugin/unite_config.vim
source $HOME/.vim/plugin/jump2pm.vim
source $HOME/.vim/plugin/mytabmove.vim
source $HOME/.vim/plugin/smooth_scroll_config.vim
source $HOME/.vim/plugin/change_statusbar_color.vim
source $HOME/.vim/plugin/html5tags.vim
source $HOME/.vim/plugin/syntastic_setting.vim
source $HOME/.vim/plugin/perltidy_settings.vim
source $HOME/.vim/plugin/autocmd_settings.vim

" for neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1

" for neomru.vim
let g:unite_source_grep_max_candidates = 200

" for emmet.vim
let g:user_emmet_leader_key='<Leader>'

" import from .mixivimrc
if filereadable($HOME.'/.mixivimrc')
    source $HOME/.mixivimrc
endif
