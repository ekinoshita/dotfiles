autocmd BufNewFile,BufRead *.swift set filetype=swift

" *.swift保存時にquickrunで実行
let g:auto_run_swift_enable = 1

function! AutoRunSwift()
  if (g:auto_run_swift_enable == 1)
    :QuickRun -runmode async:vimproc:20 -exec 'swift %s'
  endif
endfunction

autocmd BufWritePost *.swift :call AutoRunSwift()
