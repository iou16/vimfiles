
" NeoComplete$B$O3F9T$KBP$7$F8z$$$F$7$^$$=E$$$N$G(B
" $B%^%k%A%+!<%=%k;~$OL58z2=(B
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction
function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

" $B%S%8%e%"%k%b!<%I=*N;;~$K%^%k%A%+!<%=%k2r=|(B $B$9$k(B/$B$7$J$$(B 
" let g:multi_cursor_exit_from_visual_mode = 1

" $B%$%s%5!<%H=*N;;~$K%^%k%A%+!<%=%k2r=|(B $B$9$k(B/$B$7$J$$(B 
" let g:multi_cursor_exit_from_insert_mode = 1
