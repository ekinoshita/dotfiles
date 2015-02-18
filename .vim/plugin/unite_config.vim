let g:unite_enable_start_insert=1
nnoremap <C-P> :<C-u>Unite buffer<CR>
nnoremap <C-N> :<C-u>Unite -buffer-name=file file<CR>
nnoremap <C-C> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <C-Z> :<C-u>Unite file_mru<CR>
nnoremap <C-g> :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" unite-grepにagを使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

" unite-grep
" 選択した文字列をunite-grep
vnoremap /g :Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>
