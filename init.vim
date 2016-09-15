

runtime! debian.vim

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

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-e> <Plug>(neosnippet_expand_or_jump)
smap <C-e> <Plug>(neosnippet_expand_or_jump)

imap OA <Up>
imap OB <Down>
imap OC <Right>
imap OD <Left>

runtime! my_conf.vimrc

" load plugins
" runtime! plugin_conf/neobundle.vim.vimrc

" filetype off
if has('vim_starting')
	set runtimepath+=~/.bundle/neobundle.vim
endif

" set runtimepath^=$HOME/vimfiles/
set runtimepath^=$HOME/.dein/repos/github.com/Shougo/dein.vim


if dein#load_state("$HOME/.dein")
	call dein#begin("$HOME/.dein")
	call dein#load_toml("$HOME/vimfiles/dein.toml")
	"runtime! $HOME/vimfiles/dein_dict.vimrc
	call dein#end()
endif

if dein#check_install()
  call dein#install()
endif


augroup clang_complete_lazy_autocmd
  autocmd!
  autocmd InsertEnter *.cpp
  \		call neobundle#source('clang_complete') |
  \		autocmd! clang_complete_lazy_autocmd
augroup END
filetype plugin indent on


