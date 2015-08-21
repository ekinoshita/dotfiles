" swift settings
autocmd BufNewFile,BufRead *.swift set filetype=swift

" *.swift保存時にquickrunで実行
let g:auto_run_swift_enable = 1

function! AutoRunSwift()
  if (g:auto_run_swift_enable == 1)
    :QuickRun -runmode async:vimproc:20 -exec 'swift %s'
  endif
endfunction

autocmd BufWritePost *.swift :call AutoRunSwift()

" coffee settings
" vimにcoffeeファイルタイプを認識させる

au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデント設定
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
" オートコンパイル
  "保存と同時にコンパイルする
" autocmd BufWritePost *.coffee silent make! 
  "エラーがあったら別ウィンドウで表示
" autocmd QuickFixCmdPost * nested cwindow | redraw! 
" Ctrl-cで右ウィンドウにコンパイル結果を一時表示する
" nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h

" handlebars settings
" .hbsファイルを読み込む

au BufRead,BufNewFile,BufReadPre *.hbs set filetype=html
