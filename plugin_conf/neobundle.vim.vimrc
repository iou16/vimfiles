
" filetype off
if has('vim_starting')
	set runtimepath+=~/.bundle/neobundle.vim
endif

" NeoBundle

call neobundle#begin(expand('~/.bundle'))

let g:neobundle#default_options._ = { 'focus' : 1 }

" neobundle.vim
"NeoBundleFetch 'Shougo/neobundle.vim'
" vimdoc-ja
NeoBundle 'vim-jp/vimdoc-ja'

" NeoBundleRecipe 'BlockDiff'
" NeoBundleRecipe 'TagHighlight'
" NeoBundleRecipe 'vim-fugitive'
NeoBundleRecipe 'clang_complete'
NeoBundleRecipe 'cpp-vim'
NeoBundleRecipe 'gundo.vim'
NeoBundleRecipe 'lexima.vim'
NeoBundleRecipe 'lightline.vim'
NeoBundleRecipe 'nebula.vim'
NeoBundleRecipe 'neocomplete.vim'
NeoBundleRecipe 'neocomplete.vim'
NeoBundleRecipe 'neomru.vim'
NeoBundleRecipe 'neosnippet-snippets'
NeoBundleRecipe 'neosnippet.vim'
NeoBundleRecipe 'nerdtree'
NeoBundleRecipe 'tcomment_vim'
NeoBundleRecipe 'unite-build'
NeoBundleRecipe 'unite-git-conflict.vim'
NeoBundleRecipe 'unite-git_grep'
NeoBundleRecipe 'unite-gtags'
NeoBundleRecipe 'unite-launch'
NeoBundleRecipe 'unite-outline'
NeoBundleRecipe 'unite.vim'
NeoBundleRecipe 'vim-abolish'
NeoBundleRecipe 'vim-clang-format'
NeoBundleRecipe 'vim-prettyprint'
NeoBundleRecipe 'vim-qfreplace'
NeoBundleRecipe 'vim-quickrun'
NeoBundleRecipe 'vim-repeat'
NeoBundleRecipe 'vim-snowdrop'
NeoBundleRecipe 'vim-surround'
NeoBundleRecipe 'vim-unite-giti'
NeoBundleRecipe 'vim-unite-history'
NeoBundleRecipe 'vim-vis'
NeoBundleRecipe 'vimproc.vim'
NeoBundleRecipe 'vimshell.vim'
NeoBundleRecipe 'yankround.vim'

"
for bundle in neobundle#config#get_neobundles()
	if neobundle#tap(bundle.name)
		execute 'runtime! plugin_conf/'.bundle.name.'.vimrc'
	endif
endfor

"" NeoBundleLazy 'lambdaisue/unite-grep-vcs', {
"" 			\ 'filetypes' : ['grep',],
"" 			\ }
"
"" NeoBundle 'naquad/unite-digraphs'
"" NeoBundle 'fukajun/unite-actions'
"" NeoBundle 'monochromegane/unite-yaml'
"" NeoBundle 'termoshtt/unite-doxygen'
"" NeoBundle 'voi/unite-textobj'
"" NeoBundle 'pekepeke/vim-unite-sonictemplate'
"" ----  ï“èW
"" NeoBundle 'terryma/vim-multiple-cursors'
""
"" ---- syntax
"NeoBundle 'vim-scripts/TagHighlight'
"" ---- åüçı
"" NeoBundle 'othree/eregex.vim'
"" NeoBundle 'osyo-manga/vim-over'
"NeoBundleLazy 'osyo-manga/vim-over', { 'autoload' : {
"      \ 'commands' : ['OverCommandLine']
"      \ }}
"
"" if exists(':OverCommandLine')
""   xnoremap :s :OverCommandLine<CR>
"" endif
"" ---- ÇªÇÃëº
"
"NeoBundle 'thinca/vim-ref'
"NeoBundle 'thinca/vim-localrc'
"" NeoBundle 'vim-scripts/ManPageView'
"" ---- textobj
"NeoBundle 'kana/vim-textobj-function'
"NeoBundle 'kana/vim-textobj-indent'
"" NeoBundle 'kana/vim-textobj-syntax'
"NeoBundle 'kana/vim-textobj-user'
"NeoBundle 'kana/vim-textobj-underscore'
"NeoBundle 'h1mesuke/textobj-wiw'
"NeoBundle 'https://bitbucket.org/anyakichi/vim-textobj-xbrackets'
"NeoBundle 'kana/vim-operator-user'
"NeoBundle 'kana/vim-operator-replace'
"NeoBundle 'thinca/vim-textobj-comment'
"
"
"" let plugin_list = 
"" echo plugin_list
""
"" vim-clang-format
"NeoBundleLazy  'rhysd/vim-clang-format', {
"			\ 'filetypes' : ['c', 'cpp'],
"			\ }
"let s:bundle = neobundle#get("vim-clang-format")
"function! s:bundle.hooks.on_source(bundle)
"	runtime! conf.d/vim-clang-format.vimrc
"endfunction
"
"NeoBundle 'Align'
"" git
"NeoBundle 'airblade/vim-gitgutter'
"
"" filer 
"" NeoBundle 'Shougo/vimfiler'
"
"NeoBundle 'vhdirk/vim-cmake'
"NeoBundle 'sirtaj/vim-openscad'
"
"" 
"NeoBundle 'sjl/gundo.vim.git'
"NeoBundle 'gregsexton/VimCalc'
"
"NeoBundleLazy 'rhysd/libclang-vim', {
"            \ 'build' : {
"            \       'windows' : 'echo "Please build manually"',
"            \       'unix' : 'make',
"            \   }
"            \ }
"NeoBundleLazy 'rhysd/clang-type-inspector.vim', {
"            \ 'depends' : 'rhysd/libclang-vim',
"            \ 'autoload' : {
"            \       'filetypes' : 'cpp'
"            \   }
"            \ }
"NeoBundleLazy 'rhysd/vim-textobj-clang', {
"            \ 'depends' : ['kana/vim-textobj-user', 'rhysd/libclang-vim'],
"            \ 'autoload' : {
"            \       'mappings' : [['xo', 'a;'], ['xo', 'i;']]
"            \   }
"            \ }
"let g:textobj_clang_more_mappings = 1
"" NeoBundle 'rhysd/clang-extent-selector.vim'
"" NeoBundleLazy 'rhysd/vim-textobj-function-clang', {
""       \ 'depends' : [
""       \   'kana/vim-textobj-user',
""       \   'kana/vim-textobj-function',
""       \   'rhysd/libclang-vim',
""       \ ],
""       \ 'autoload' : {
""       \     'mappings' : [['xo', 'if'], ['xo', 'af']]
""       \   }
""       \ }
"
"" NeoBundle 'https://github.com/tsukkee/unite-tag'
"" NeoBundle 'https://github.com/goldfeld/vim-seek'
"" NeoBundle 'https://github.com/rhysd/clever-f.vim'
"" NeoBundle 'https://github.com/adie/BlockDiff'
"" NeoBundle 'https://github.com/thinca/vim-poslist'
"" NeoBundle 'https://github.com/thinca/vim-visualstar'
"" NeoBundle 'https://github.com/tpope/vim-speeddating'
"" NeoBundle 'https://github.com/kana/vim-textobj-fold'
"" NeoBundle 'https://github.com/kana/vim-textobj-lastpat'
"" NeoBundle 'https://github.com/thinca/vim-ref'
"" NeoBundle 'https://github.com/taku-o/vim-reorder-columns'
"" NeoBundle 'https://github.com/taku-o/vim-toggle'
"" NeoBundle 'https://github.com/tyru/vim-altercmd'
"" NeoBundle 'https://github.com/ujihisa/unite-colorscheme'
"" NeoBundle 'https://github.com/ujihisa/unite-launch'
"" NeoBundle 'https://github.com/vim-scripts/DoxygenToolkit.vim'
"" NeoBundle 'https://github.com/vim-scripts/VimRepress'
"" NeoBundle 'kien/ctrlp.vim' 

" let g:neobundle#rm_command = "rm -rf"

let g:neobundle#install_max_processes = 2
let g:neobundle#install_process_timeout = 60

" let g:neobundle#types#raw#calc_hash_command = sha1sum

" let g:neobundle#types#git#command_path     = 
" let g:neobundle#types#git#default_protocol = 
" let g:neobundle#types#hg#default_protocol  = 
" let g:neobundle#types#git#enable_submodule = 1
" let g:neobundle#types#git#pull_command     = 

" let g:neobundle#types#svn#command_path = 

" let g:neobundle#types#hg#command_path = 
" let g:neobundle_default_hg_protocol   = 
" NeoBundle 'valloric/youcompleteme'

call neobundle#end()

NeoBundleCheck
