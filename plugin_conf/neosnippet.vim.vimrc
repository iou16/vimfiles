if !neobundle#tap('neosnippet.vim')
  finish
endif

function! neobundle#tapped.hooks.on_source(bundle)
  " let g:neosnippet#snippets_directory = g:my_vim_dir.'/snippet'
endfunction

call neobundle#untap()
finish

" キーマップ無効化 有効にするのはLustyJuggler用(?)
" let g:neosnippet#disable_select_mode_mappings = 1
" ユーザ定義スニペット以外を無効にする拡張子
" let g:neosnippet#disable_runtime_snippets = {
" \ }
" let g:neosnippet#enable_snipmate_compatibility = 0
" let g:neosnippet#enable_preview = 0
" let g:neosnippet#expand_word_boundary = 0
" 拡張子とスニペットの対応付け
" let g:neosnippet#scope_aliases = {}
" キャッシュの保存先の変更
" let g:neosnippet#data_directory = "$XDG_CACHE_HOME/neosnippet"
