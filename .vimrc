" .vimrc


" 定番設定

set t_Co=256
colorscheme desert
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set backspace=2 " バックスペースでインデントや改行を削除できるようにする
set wrapscan " 検索時にファイルの最後まで行ったら最初に戻る
set showmatch " 括弧入力時に対応する括弧を表示
set number
set ruler " ルーラー(右下の行,列番号)を表示
"set list " タブや改行を表示
"set ignorecase " 検索時に大文字小文字を無視
set smartcase " 大文字小文字の両方が含まれている場合は大文字小文字を区別
set fileformats=unix,mac,dos " 改行コードの自動認識
set nocompatible " vimの拡張機能をON


" ステータス行設定

set showcmd  " コマンドをステータス行に表示
set laststatus=2 " 常にステータス行を表示
set cmdheight=2  " コマンドラインの高さ
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8p


" import from .mixivimrc
let OSTYPE = system('uname')

if OSTYPE == "Linux\n"
    source ~/.mixivimrc
endif


" KeyMaps
map <c-a> ^
map <c-e> $


" for unite.vim

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


" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
set ambiwidth=double
endif


" 全角スペース、末尾の半角スペースの色付け設定
if has("syntax")
    syntax on
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
autocmd BufNewFile *.pl 0r $HOME/.vim/template/perl.tmpl
autocmd BufNewFile *.t 0r $HOME/.vim/template/perl.tmpl


" 拡張子.tのファイルをperlコードとして認識する
au BufReadPost,BufNewFile *.t :setl filetype=perl


" Plugin
filetype indent plugin on

" NeoBundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif


" My Bundles here:
" jellybeans
NeoBundle 'nanotech/jellybeans.vim.git'
" solarized
NeoBundle 'altercation/vim-colors-solarized.git'
" jump2pm
NeoBundle 'nakatakeshi/jump2pm.vim.git'
" unite
NeoBundle 'Shougo/unite.vim.git'
" neocomplcache
NeoBundle 'Shougo/neocomplcache'
" vim-distinguished
NeoBundle 'Lokaltog/vim-distinguished'
" vim-perl
" NeoBundle 'vim-perl/vim-perl'



