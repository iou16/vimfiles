if !neobundle#tap('lightline.vim')
  finish
endif

function! neobundle#tapped.hooks.on_source(bundle)
	let g:lightline = {
		\ 'colorscheme': 'wombat',
		\ 'component': {
		\   'readonly': '%{&readonly?"x":""}',
		\ },
		\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
		\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
		\ }
endfunction

call neobundle#untap()
finish
