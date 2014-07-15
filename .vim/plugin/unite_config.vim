let g:unite_enable_start_insert=1
noremap <C-P> :Unite buffer<CR>
noremap <C-N> :Unite -buffer-name=file file<CR>
noremap <C-C> :UniteWithBufferDir -buffer-name=files file<CR>
noremap <C-Z> :Unite file_mru<CR>
