
" NeoCompleteは各行に対して効いてしまい重いので
" マルチカーソル時は無効化
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction
function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

" ビジュアルモード終了時にマルチカーソル解除 する/しない 
" let g:multi_cursor_exit_from_visual_mode = 1

" インサート終了時にマルチカーソル解除 する/しない 
" let g:multi_cursor_exit_from_insert_mode = 1
