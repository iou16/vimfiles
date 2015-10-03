if !neobundle#tap('clang_complete') 
  finish
endif

augroup clang_complete_lazy_autocmd
  autocmd!
  autocmd InsertEnter *.c,*.cpp
  \		call neobundle#source('clang_complete') |
  \		autocmd! clang_complete_lazy_autocmd
augroup END

function! neobundle#tapped.hooks.on_source(bundle)
  let g:clang_library_path  = g:my_clang_path
  let g:clang_user_options  = g:my_clang_option
  let g:clang_make_default_keymappings = 0
endfunction

call neobundle#untap()
finish

" 基本設定
  " 無効化/有効化
  " let g:clang_complete_loaded = 0
  " 補完項目の自動選択
  " しない/するが挿入しない/自動挿入
  " let g:clang_auto_select   = 0
  " let g:clang_complete_auto = 1
  " let g:clang_hl_errors     = 1
  " let g:clang_trailing_placeholder = 0
  " let g:clang_user_options  = 
  " let g:clang_use_library   = 1
  " " 候補表示順 priority, alpha, none
  " let g:clang_sort_algo     = 'priority'
  " let g:clang_complete_macros   = 0
  " let g:clang_complete_patterns = 0
  
" key-mapping 
  " let g:clang_jumpto_declaration_key            = "<C-]>"
  " let g:clang_jumpto_declaration_in_preview_key = "<C-W>"
  " leg g:clang_jumpto_back_key                   = "<C-O>"
  
" preview関連
  " let g:clang_complete_copen    = 0
  " let g:clang_periodic_quickfix = 0
  " let g:clang_close_preview     = 0

" snippet関連
  " let g:clang_snippets         = 0
  " let g:clang_snippets_engine  = 'clang_complete'
  " let g:clang_conceal_snippets = 1

" その他
  " " Vim 7.3.32 以前用(?)
  " let g:clang_restore_cr_imap      = iunmap <buffer> <CR>
  " " clang_completeの設定を書くファイルの指定
  " let g:clang_auto_user_options    = ".clang_complete, path"
  " let g:clang_compilation_database = 
