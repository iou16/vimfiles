call dein#load_dict({
\	'cohama/lexima.vim' : 
\		{'lazy': 1, 'on_i': 1, 'repo': 'cohama/lexima.vim'},
\	'moznion/unite-git-conflict.vim' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'moznion/unite-git-conflict.vim'},
\	'kmnk/vim-unite-giti' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'kmnk/vim-unite-giti'},
\	'hewes/unite-gtags' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'hewes/unite-gtags', 'hook_add': '	noremap g[ :Unite gtags/ref:<C-R><C-W> -auto-preview<CR>	noremap g] :Unite gtags/def:<C-R><C-W> -auto-preview<CR> 	noremap s] :Unite -auto-preview gtags/def:'},
\	'Shougo/unite.vim' : 
\		{'lazy': 1, 'repo': 'Shougo/unite.vim', 'hook_add': '	nnoremap <silent> ''f :Unite file_rec -auto-preview -start-insert<CR>	nnoremap ''g :Unite grep:. -auto-preview<CR>	nnoremap <silent> ''r :UniteResume<CR>'},
\	'Shougo/neosnippet-snippets' : 
\		{'lazy': 1, 'on_source': 'neosnippet.vim', 'repo': 'Shougo/neosnippet-snippets'},
\	'Shougo/dein.vim' : 
\		{'repo': 'Shougo/dein.vim'},
\	'vim-jp/cpp-vim' : 
\		{'lazy': 1, 'repo': 'vim-jp/cpp-vim', 'on_ft': 'cpp'},
\	'thinca/vim-unite-history' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'thinca/vim-unite-history'},
\	'tpope/vim-surround' : 
\		{'repo': 'tpope/vim-surround'},
\	'Rip-Rip/clang_complete' : 
\		{'lazy': 1, 'on_i': 1, 'repo': 'Rip-Rip/clang_complete', 'hook_source': 'runtime! plugin_conf/clang_complete.vimrc', 'on_ft': ['c', 'cpp']},
\	'tomtom/tcomment_vim' : 
\		{'lazy': 1, 'repo': 'tomtom/tcomment_vim', 'hook_add': '	nnoremap <silent> ''c  :TComment<CR>	vnoremap <silent> <expr> ''c mode() == ''<C-v>'' ? '':TCommentInline<CR>'' : '':TCommentMaybeInline<CR>''', 'hook_source': 'runtime! plugin_conf/tcomment_vim'},
\	'sgur/unite-git_grep' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'sgur/unite-git_grep'},
\	'sjl/gundo.vim' : 
\		{'lazy': 1, 'repo': 'sjl/gundo.vim', 'hook_add': 'nnoremap ''u :GundoToggle<CR>'},
\	'Shougo/unite-build' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'Shougo/unite-build', 'hook_add': '	nmap ''b :execute(join([''Unite build:make:--directory='', g:my_build_directory], ''''))<CR>	noremap ''B :UniteResume build<CR>'},
\	'scrooloose/nerdtree' : 
\		{'lazy': 1, 'repo': 'scrooloose/nerdtree', 'hook_add': 'nmap <silent> ''t :NERDTreeToggle<CR>', 'hook_source': 'runtime! plugin_conf/nerdtree.vimrc'},
\	'Shougo/vimshell.vim' : 
\		{'lazy': 1, 'repo': 'Shougo/vimshell.vim', 'hook_add': 'noremap ''s :VimShellTab<CR>', 'hook_source': 'runtime! plugin_conf/vimshell.vim'},
\	'kana/vim-repeat' : 
\		{'repo': 'kana/vim-repeat'},
\	'Shougo/neosnippet.vim' : 
\		{'lazy': 1, 'on_source': ['deoplete.nvim', 'neocomplete.vim'], 'repo': 'Shougo/neosnippet.vim'},
\	'LeafCage/yankround.vim' : 
\		{'repo': 'LeafCage/yankround.vim', 'hook_add': '	nmap gp <Plug>(yankround-gp)	nmap gP <Plug>(yankround-gP)	nmap p <Plug>(yankround-p)	nmap P <Plug>(yankround-P)	noremap ''y :Unite yankround<CR>	nmap <C-n> <Plug>(yankround-next)	nmap <C-p> <Plug>(yankround-prev)'},
\	'Shougo/vimproc.vim' : 
\		{'if': '!has(''kaoriya'')', 'build': 'make', 'repo': 'Shougo/vimproc.vim'},
\	'Shougo/neomru.vim' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'Shougo/neomru.vim', 'hook_add': '	nnoremap sf :Unite file_mru -start-insert<CR>	nnoremap sd :Unite directory_mru -start-insert -default-action=cd<CR> '},
\	'ujihisa/unite-launch' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'ujihisa/unite-launch'},
\	'itchyny/lightline.vim' : 
\		{'repo': 'itchyny/lightline.vim', 'hook_add': 'runtime! plugin_conf/lightline.vim.vimrc'},
\	'taku-o/vim-vis' : 
\		{'repo': 'taku-o/vim-vis', 'hook_add': 'vnoremap : :B '},
\	'Shougo/neocomplete.vim' : 
\		{'lazy': 1, 'if': '!has(''nvim'')', 'on_i': 1, 'repo': 'Shougo/neocomplete.vim', 'hook_source': 'runtime! plugin_conf/neocomplete.vim.vimrc'},
\	'Shougo/unite-outline' : 
\		{'lazy': 1, 'on_source': 'unite.vim', 'repo': 'Shougo/unite-outline', 'hook_add': '	noremap ''o :Unite outline<CR>'},
\ })
