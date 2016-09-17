let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 1000
let g:neocomplete#enable_ignore_case = 0
let g:neocomplete#enable_smart_case  = 1
let g:neocomplete#enable_camel_case  = 0

" let g:neocomplete#enable_auto_delimiter = 1

" キャッシュする長さの最低値を指定
let g:neocomplete#sources#syntax#min_keyword_length = 3
" 指定された条件でomni補完を仕様するように
let g:neocomplete#force_overwrite_completefunc = 1

" clang_complete
if !exists('g:neocomplete#force_omni_input_patterns')
	let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
	\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
	\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
	\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.objcpp =
	\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions'
\ }

finish
  
" コンプリート設定
  " let g:neocomplete#disable_auto_complete          = 0
  " let g:neocomplete#auto_completion_start_length   = 2
  " let g:neocomplete#enable_cursor_hold_i           = 0
  " let g:neocomplete#manual_completion_start_length = 0
  " let g:neocomplete#enable_insert_char_pre         = 0
  " let g:neocomplete#enable_auto_select = 0
  " let g:neocomplete#enable_fuzzy_completion = 1
  " 日本語も補完可能に(?)
  " let g:neocomplete#enable_multibyte_completion = 0
  " 補完を行わないバッファ名
  " let g:neocomplete#lock_buffer_name_pattern = ''
  " let g:neocomplete#lock_iminsert	= 0
  " let g:neocomplete#keyword_patterns =
  " let g:neocomplete#same_filetypes.hoge = 
  " 補完が文章を想定したような挙動になる(?)
  " let g:neocomplete#text_mode_filetypes
  " let g:neocomplete#ctags_command = 'ctags'
  " let g:neocomplete#ctags_arguments = 
  " let g:neocomplete#delimiter_patterns.hoge = 
  " これ以上補完に時間がかかる場合は補完しない
  " let g:neocomplete#skip_auto_completion_time = 0.3
  " let g:neocomplete#enable_auto_close_preview = 0
  " let g:neocomplete#sources#omni#functions = {}
  " if !exists('g:neocomplete#sources#vim#complete_functions')
  "   let g:neocomplete#sources#vim#complete_functions = {}
  " endif
  " let g:neocomplete#sources#vim#complete_functions.hoge =
  " let g:neocomplete#ignore_source_files = []

" 補完ソース設定
  " ファイルタイプとソースの対応付け
  " if !exists('g:neocomplete#sources')
  "   let g:neocomplete#sources = {}
  " endif
  " let g:neocomplete#sources.hoge =
  " let b:neocomplete_sources ['hoge']
  " let g:neocomplete#tags_filter_patterns = 
  " let g:neocomplete#ignore_composite_filetypes = {
  "   \ 'ruby.spec' : 'ruby'
  "   \ }
  " let g:neocomplete#ignore_composite_filetypes = 
  
" (?)
  " let g:neocomplete#sources#syntax#min_keyword_length = 4
  " let g:neocomplete#sources#member#prefix_patterns
  
" 補完表示設定
  " let g:neocomplete#max_keyword_width = 80
  " let g:neocomplete#min_keyword_length = 4

" 内部データ
  " let g:neocomplete#data_directory = "$XDG_CACHE_HOME/neocomplete" 
  " let g:neocomplete#release_cache_time = 900
  
" キャッシュ
  " let g:neocomplete#sources#buffer#cache_limit_size = 500000
  " let g:neocomplete#sources#tags#cache_limit_size   = 500000
  " キャッシュを作成しないバッファ名
  " let g:neocomplete#sources#buffer#disabled_pattern = ''
  " この文字数以上の場合はキャッシュに追加しない
  " let g:neocomplete#sources#buffer#max_keyword_width = 80
  
" マッピング
  " let g:neocomplete#fallback_mappings = []

" 
  " let g:neocomplete#use_vimproc = 1
