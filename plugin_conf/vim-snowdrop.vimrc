" " Enable code completion in neocomplete.vim.
" let g:neocomplete#sources#snowdrop#enable = 1
"
" " Not skip
" let g:neocomplete#skip_auto_completion_time = ""


" set libclang directory path
let g:snowdrop#libclang_directory = g:my_clang_path

" set include directory path.
" let g:snowdrop#include_paths = {"cpp" : ["/usr/include/c++/4.8/", "/usr/include/x86_64-linux-gnu/c++/4.8/", "\./"]}

" set clang command options.
let g:snowdrop#command_options = {
\   "cpp" : "-std=c++11",
\}
