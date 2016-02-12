" vim
let g:my_vim_dir = '$HOME/vimfiles'

" clang settings
let g:my_clang_path   = "<clang_path>"
let g:my_clang_option = ''

" vimproc
if has('kaoriya')
	let &runtimepath = &runtimepath.',<path_to_kaoriya_vim>\plugins\vimproc'
endif

set undodir=$HOME/vimfiles/undo

" デフォルトのmakeディレクトリ
let g:my_build_directory = './'

" let g:vimshell_interactive_encodings = {
" \}
