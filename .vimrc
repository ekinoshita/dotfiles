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

" 定番設定

set t_Co=256
" syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2 " バックスペースでインデントや改行を削除できるようにする
set wrapscan " 検索時にファイルの最後まで行ったら最初に戻る
"set showmatch " Highlight-UnMatched-Brackets 入れたので不要になった
set number
set ruler " ルーラー(右下の行,列番号)を表示
"set list " タブや改行を表示
"set ignorecase " 検索時に大文字小文字を無視
set smartcase " 大文字小文字の両方が含まれている場合は大文字小文字を区別
set fileformats=unix,mac,dos " 改行コードの自動認識
set nocompatible " vimの拡張機能をON
set hlsearch " ハイライト検索を有効にする
set visualbell " ビープ音の代わりに画面フラッシュさせる


" ステータス行設定

set showcmd  " コマンドをステータス行に表示
set laststatus=2 " 常にステータス行を表示
set cmdheight=2  " コマンドラインの高さ

" ステータスラインを編集
" 左寄せ: ファイル名,変更有無
" 右寄せ: ファイルタイプ,文字コード,改行コード,行数,列数
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8p
set statusline=%F%m%=[%Y]\[%{&fileencoding}]\[%{&ff}]\[%l/%c]


" import from .mixivimrc
let OSTYPE = system('uname')
if OSTYPE == "Linux\n"
    source ~/.mixivimrc
endif


" KeyMaps
noremap <c-a> ^
noremap <c-e> $
nnoremap ; :
nnoremap ,vim :vs ~/.vimrc<CR>
nnoremap ,tv :tabe ~/.vimrc<CR>
nnoremap ,rv :source ~/.vimrc<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT


" 括弧とかダブルコート入力時に← に戻る
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>

let mapleader=" "

" Leaderのショートカット
nnoremap <SID>(toggle-paste)          :<C-u>set paste!<CR>
nnoremap <SID>(toggle-number)         :<C-u>set number!<CR>
nnoremap <SID>(toggle-relativenumber) :<C-u>set relativenumber!<CR>
nmap <silent> <Leader>1 <SID>(toggle-number)
nmap <silent> <Leader>2 <SID>(toggle-relativenumber)
nmap <silent> <Leader>3 <SID>(toggle-paste)"


" ウィンドウの開く方向を指定する
set splitright " 新しいウィンドウを右に開く


" vimdiffの色設定
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7


"  for unite.vim

" 入力モードで開始
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>


" for neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1


" for Highlight-UnMatched-Brackets
set matchpairs+=<:>


" smooth-scrollの初速を変更する
" <C-d>/<C-u> 時のスリープ時間 (msec) : 小さくするとスクロールが早くなります。
" Default : 10
let g:ac_smooth_scroll_du_sleep_time_msec = 5

" <C-f>/<C-b> 時のスリープ時間 (msec) : 小さくするとスクロールが早くなります。
" Default : 10
let g:ac_smooth_scroll_fb_sleep_time_msec = 5


" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
    set ambiwidth=double
endif


" 全角スペース、末尾の半角スペースの色付け設定
if has("syntax")
    function! ActivateInvisibleIndicator()
        syntax match InvisibleJISX0208Space "　" display containedin=ALL
        highlight InvisibleJISX0208Space term=underline ctermbg=Red guifg=#999999 gui=underline
        syntax match InvisibleTrailedSpace "[ ]\+$" display containedin=ALL
        highlight InvisibleTrailedSpace term=underline ctermbg=Red guifg=#FF5555 gui=underline
        "タブの色付けだけ解除
        "syntax match InvisibleTab "\t" display containedin=ALL
        "highlight InvisibleTab term=underline ctermbg=Cyan guibg=#555555
    endf

    augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
    augroup END
endif


" パッケージ名から定義箇所にジャンプする - Jump2pmのショートカット
noremap fg :call Jump2pm('vne')<ENTER>
noremap ff :call Jump2pm('e')<ENTER>
noremap fd :call Jump2pm('sp')<ENTER>
noremap ft :call Jump2pm('tabe')<ENTER>

" fg : 縦分割
" ff : ウィンドウ内表示
" fd : 水平分割
" ft : タブ分割


" 文字コードの自動認識
source $HOME/.vim/plugin/recognize_charcode.vim


" 新規作成時にテンプレートを呼び出し
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl_tmpl.pl
autocmd BufNewFile *.t 0r $HOME/.vim/template/perl_tmpl.t


" 拡張子.tのファイルをperlコードとして認識する
au BufReadPost,BufNewFile *.t :setl filetype=perl

" ----------------------------------------------------------
" Plugins

filetype off " NeoBundleを挟む

" NeoBundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

filetype indent plugin on " NeoBundleを挟む

" My Bundles here:
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tpope/vim-surround'
NeoBundle 'nakatakeshi/jump2pm.vim.git'
" NeoBundle 'vim-perl/vim-perl'
NeoBundle 'yonchu/accelerated-smooth-scroll'

" 対応する括弧をハイライト表示に
NeoBundle 'vim-scripts/Highlight-UnMatched-Brackets'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'h1mesuke/textobj-wiw.git'

" アロー演算子とかをいい感じにインデントする
NeoBundle 'h1mesuke/vim-alignta.git'

" yankしている文字列をtext-objの部分と入れ替える
NeoBundle 'kana/vim-operator-user.git'
NeoBundle 'kana/vim-operator-replace.git'

" colorschemes
NeoBundle 'nanotech/jellybeans.vim.git'
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'tomasr/molokai'

" NeoBundleで入れたcolorchemeの設定はNeoBundle以下に書く
" solarized options 
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_degrade=1
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
" let g:solarized_contrast = "high"
let g:solarized_contrast='normal'
" let g:solarized_visibility = "high"
let g:solarized_visibility='normal'
syntax enable
set background=dark
colorscheme solarized
" colorscheme desert
" colorscheme wombat
" colorscheme molokai
