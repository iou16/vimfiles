
if !neobundle#tap('nerdtree') 
  finish
endif

nmap <silent> 't :NERDTreeToggle<CR>

function! neobundle#tapped.hooks.on_source(bundle)
	" ファイル選択時に閉じる
	let g:NERDTreeQuitOnOpen = 1
	let g:NERDTreeIgnore     = ['\.clean$', '\.swp$', '\.bak$', '\~$']
endfunction

call neobundle#untap()
finish
