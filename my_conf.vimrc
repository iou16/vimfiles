" vim
let g:my_vim_dir= '$HOME/vimfiles'

" clang settings
let g:my_clang_path   = "/usr/lib/llvm-3.6/lib"
let g:my_clang_option = ''

" vimproc
if has('kaoriya')
	let &runtimepath = &runtimepath.',C:\Apps\vim74-kaoriya-win64\plugins\vimproc'
endif

set undodir=$HOME/.vim/undo

" デフォルトのmakeディレクトリ
let g:my_build_directory = './'
