" vim
let g:my_vim_dir= '$HOME/vimfiles'

" clang settings
let g:my_clang_path   = "C:/Program\ Files/LLVM/bin"
let g:my_clang_option = ''

" vimproc
if has('kaoriya')
	let &runtimepath = &runtimepath.',C:\Apps\vim74-kaoriya-win64\plugins\vimproc'
endif

set undodir=E:/cache/vim_undo

" デフォルトのmakeディレクトリ
let g:my_build_directory = './'

let g:vimshell_interactive_encodings = {
\'/tools/cygwin/bin/':'utf-8',
\'/Program\ Files\ (x86)/Git/bin':'utf-8',
\}
