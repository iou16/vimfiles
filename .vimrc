runtime! debian.vim

set nocompatible

" set fileencodings=iso-2022-jp-3,iso-2022-jp,euc-jisx0213,euc-jp,utf-8,ucs-bom,euc-jp,eucjp-ms,cp932
if has('kaoriya')
	set fileencodings=guess
else
	set fileencodings=utf-8,ucs-bom,euc-jp,eucjp-ms,cp932
endif
" set fileformats=dos,unix,mac
set fileformats=unix,dos,mac

set encoding=utf-8
" 次にファイルを開いた時に，閉じた時のカーソル位置に移動
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
"

" %機能の強化
:runtime macros/matchit.vim

" 全角スペースは赤くする
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkRed guibg=DarkRed
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" その他色々な定義的な？
:inoremap <expr> <C-R>%h expand('%:p:h')


" wq alias
command! -nargs=0 Wq wq
command! -nargs=0 W w
command! -nargs=0 Q q



" 256色表示設定
set t_Co=256
colorscheme wombat256mod

runtime! common_native.vimrc
runtime! native.vimrc

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-e> <Plug>(neosnippet_expand_or_jump)
smap <C-e> <Plug>(neosnippet_expand_or_jump)

imap OA <Up>
imap OB <Down>
imap OC <Right>
imap OD <Left>

runtime! my_conf.vimrc

" load plugins
set runtimepath^=$HOME/.dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.cache/dein')

if dein#load_state(s:dein_dir)
	echo 'a'
   call dein#begin(s:dein_dir)
   call dein#load_toml("$HOME/vimfiles/dein.toml")
   call dein#end()
   call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif
" 1つ上のディレクトリのws.vimrcを読み込む
if filereadable("../ws.vimrc")
	source ../ws.vimrc
endif
" localの設定ファイルがあれば読み込む
if filereadable("./local.vimrc")
	source ./local.vimrc
endif


" augroup clang-inspect-type-mapping
"     autocmd!
"     autocmd FileType cpp nmap <C-t> <Plug>(clang-inspect-type-at-cursor)
" augroup END


let g:vimshell_split_command = "vsplit"

noremap '1 "nyi':tabnew ~/vimfiles/recipes/<C-r>n.vimrecipe
noremap '2 "nyi':tabnew ~/vimfiles/plugin_conf/<C-r>n.vimrc
noremap '3 :!cp ~/vimfiles/recipes_bkp/ ~/vimfiles/recipes/<S-Left><Left>

noremap ;; ;

let $path=$path.';C:\tools\cygwin\bin'


filetype plugin indent on

