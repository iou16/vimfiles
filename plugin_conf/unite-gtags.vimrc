" カーソル下の単語を参照して場所を検索
noremap g[ :Unite gtags/ref:<C-R><C-W> -auto-preview<CR>
"  tselectの対象に移動 → カーソル下の単語の定義箇所に飛ぶ(gtags使用)
noremap g] :Unite gtags/def:<C-R><C-W> -auto-preview<CR> 

noremap s] :Unite -auto-preview gtags/def:
