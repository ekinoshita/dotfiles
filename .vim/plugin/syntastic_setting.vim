" " for sysntastic
" " set statusline+=%#warningmsg#
" " set statusline+=%{SyntasticStatuslineFlag()}
" " set statusline+=%*
"
" " let syntastic_debug = 1 " debugモードを起動
" let g:syntastic_enable_signs = 1
" let g:syntastic_enable_balloons = 1
" let g:syntastic_auto_jump = 1 " ファイルを開く|保存したときに最初のエラーにカーソルを飛ばず
"
" " location list setting
" let g:syntastic_auto_loc_list = 1 " 1でQuickfixがデフォルトで立ち上がる
" " let g:syntastic_aggregate_errors = 1 " エラー単位でリスト内を集約する
" let g:syntastic_loc_list_height = 10
"
" " automaticaly stntax check
" let g:syntastic_check_on_open = 1
" let g:syntastic_mode_map = { 'mode' : 'active',
"                            \ 'active_filetypes' : ['perl.mixipm','perl.mixiprove'],
"                            \ 'passive_filetypes' : ['yaml'] }
"
" " perl syntastic setting
" " let g:syntastic_perl_checkers = [ 'script/perl', 'perlcritic', 'podchecker' ]
" let g:syntastic_perl_checkers = [ 'script/perl' ]
" let g:syntastic_enable_perl_checker = 1
" let g:syntastic_perl_lib_path = [
"                          \ "lib",
"                          \ "local/lib/perl5",
"                          \ "local/lib/perl5/x86_64-linux",
"                          \ "/usr/local/mixi-devtools/mixi-test/local/lib/perl5/x86_64-linux-thread-multi",
"                          \ "/usr/local/mixi-devtools/mixi-test/local/lib/perl5",
"                          \ "/home/eisuke.kinoshita/git/mixi/lib",
"                          \ "/home/eisuke.kinoshita/git/mixi/t/inc",
"                          \ "/home/eisuke.kinoshita/git/mixi/t/lib",
"                          \ "/var/www/mixi/local/lib/perl5/x86_64-linux-thread-multi",
"                          \ "/var/www/mixi/local/lib/perl5",
"                          \ ]
"
" " let g:syntastic_perl_perlcritic_args = '--harsh'
