
" -----------------------------------------------------------バルーン
" バルーンを有効に
set ballooneval
" バルーンが表示されるまでの時間(ms)
" set balloondelay=600
" バルーン表示に用いる式
" set ballooneval

" -----------------------------------------------------------GUI設定
set guioptions=Mcfi
if has('kaoriya')
	set guioptions+=C
endif
" ビジュアルモード時にクリップボードに 入れる/入れない
" set guioptions-=aPA
" 簡単な選択にダイアログを 使わない/使う
" set guioptions+=c
" guiのタブを使用 する/しない
" set guioptions-=e
" shellから呼ばれた場合に終了を 待つ/待たない
" set guioptions+=f
" Vimのアイコンを 使う/使わない
" set guioptions+=i
" メニューバーを表示 する/しない
" set guioptions-=m
" システムメニューを読み込まない, vimrcに書くこと
" set guioptions+=M
" 無効メニューを 灰色に/表示しない
" set guioptions+=g
" メニューの切り離し 有効/無効
" set guioptions-=t
" ツールバー 表示/非表示
" set guioptions-=T
" 右スクロールバーを 表示/非表示
" set guioptions-=r
" 垂直分割ある場合のみ右スクロールバーを表示
" set guioptions-=R
" 左スクロールバーを 表示/非表示
" set guioptions-=l
" 垂直分割ある場合のみ左スクロールバーを表示
" set guioptions-=L
" 水平スクロールバーを 表示/非表示
" set guioptions-=b
" 水平スクルールバーの最大長を現在行の長さに/
" set guioptions-=h
" ダイアログのボタンを垂直方向に配置/
" set guioptions-=v
" フッターを追加 (motifのみ)
" set guioptions-=F

" ファイルブラウザ 開始ディレクトリ
" set browsedir=last
" set guipty
" GUIタブのラベル設定
" set guitablabel
" set guitabtooltip

" -----------------------------------------------------------フォント
" set guifont=Monaco\ for\ Powerline:h24:cANSI 0fi
set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline\ 14
" set renderoptions=type:directx,renmode:5
" set renderoptions=type:directx
set guifontwide=TakaoGothic\ 14
" set guifont=Consolas:h12:cSHIFTJIS
" set guifontwide=TakaoGothic:h12:cSHIFTJIS
"
" set linespace=2

" -----------------------------------------------------------ツールバー
" set toolbar=
" set toolbariconsize=

" altキーをメニューに使わない
set winaltkeys=no

" -----------------------------------------------------------カーソルの設定
" set guicursor=


set iminsert=0
set imsearch=-1

set vb t_vb=
