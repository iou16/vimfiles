
" IME切り替えボタンの指定
set imactivatekey=C-S-`

" -----------------------------------------------------------ヤンク
" 無名レジスタの代わりにクリップボードを使用する
if has('unix')
	set clipboard=exclude:.*
	" set clipboard=unnamed,autoselect
	" set clipboard=unnamedplus,autoselect
elseif has('win32') || has('win64')
	set clipboard=unnamed,autoselect
endif


" 暗号化アルゴリズム
set cryptmethod=blowfish

