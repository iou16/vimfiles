
" Vim5移行のバージョンでは，シンタクスハイライト機能が搭載されている
" ハイライト機能ONに
if has("syntax")
  syntax on
endif
" 

" -----------------------------------------------------------背景
" 背景を暗いものにするか明るいものにするか
set background=dark
" 

" -----------------------------------------------------------バルーン
" バルーンは使わない
set noballooneval

" -----------------------------------------------------------行折り返し
" 行の折り返し
set nowrap
" 行の折り返しで区切れる文字を指定
" set breakat+=
" breakoutに指定された文字列で行を折り返す
set linebreak
" 折り返しの前に表示する文字列
set showbreak=+++\  
" 複数に渡る折り返し行が一部になる場合でも画面に表示
set display=lastline
" ウィンドウの折り返し位置のオフセット
set wrapmargin=0

" -----------------------------------------------------------コマンドライン
" コマンドラインに使われる行数指定
set cmdheight=1
" コマンドラインウィンドウに使われる行数指定
set cmdwinheight=7
" いわゆるmoreコマンドみたいなやつ
set more
" コマンドラインモードでコマンドラインウィンドウを開くキー
" set cedit=<C-f>
" コマンドライン補完を拡張モードに
set wildmenu
" 補完の挙動指定
set wildmode=longest:list,full
" コマンドラインモードで実行したコマンド履歴の保存件数
set history=10000

" -----------------------------------------------------------画面表示(現在位置)
" 現在列を強調表示
" set nocursorcolumn
" 現在行を強調表示
" set nocursorline

" -----------------------------------------------------------画面表示(その他)
" 自分が打ち込む必要のない処理の実行中は画面を更新しない
set lazyredraw
" タブ文字と行末文字を表示
set nolist
" listにつかう文字を指定
set listchars=tab:I-,extends:<,trail:-,eol:%
" 構文を検索する最大行数
" set synmaxcol=3000
" 閉じ括弧を入力した時，対応する括弧にわずかの間ワープ
set showmatch
" タイトル非表示
set notitle

" -----------------------------------------------------------インデント
" 自動的にインデント
set autoindent
" スマートインデントを使う
set smartindent
" 改行やインデントもbackspaceで消せるように
set backspace=indent,eol,start
" インデント時に既存の行のインデントの仕方を参考にする
" set nocopyindent
" インデント時にすでにあるタブ及びスペースをそのままにしない
set nopreserveindent
" インデントをインデント幅の倍数に丸める
set shiftround
" インデント幅
set shiftwidth=0

" -----------------------------------------------------------タブ
" タブをスペースに展開しない
set noexpandtab
" 行頭ではシフト幅，それ以外ではタブ幅
set smarttab
" タブ幅
set softtabstop=4
set tabstop=4

" -----------------------------------------------------------行表示
" 行番号表示
set number
" 行の相対位置表示
set relativenumber

" -----------------------------------------------------------ウィンドウ関連
" 分割したときにそれぞれのウィンドウを同じサイズに
set equalalways
" equalalwaysの適用範囲
set eadirection="both"
" ウィンドウを横に分割すると，新しいウィンドウが下に
set splitbelow
" ウィンドウを立てに分割すると新しいウィンドウが左に
set splitright
" カレントウィンドウの最小行数
set winheight=1
set winminheight=1
" カレントウィンドウの最小列数
set winwidth=1
set winminwidth=1

" -----------------------------------------------------------ステータス行
" この数より多くの行が変更されたら報告する
set report=2
" 現在のカーソル位置をステータスに表示
set ruler
" メッセージの短縮
set shortmess="aoOTAI"
" コマンドをステータス行に表示
set showcmd
" 現在のモードは非表示(lightlineで表示)
set noshowmode
" 最下行に常にステータス表示
set laststatus=2
" バッファが変更される間にシェルコマンドが使われたら，警告を表示
set warn

" -----------------------------------------------------------折りたたみ
" 折りたたみの外に出るときに自動的に折りたたむ
" set foldclose=""
" 折りたたみを左側に表示
" set foldcolumn=0
" 折りたたみを有効に
" set foldenable
" foldmethodがexprの時に使用される???
" set foldexpr=
" foldmethodがindentの時に上下行を参照する開始文字
" set foldignore="#"
" ファイルを開いた時に，このレベルより高いものは閉じられる
set foldlevelstart=99
" foldmethodがmarkerの時に使う，折りたたみ対象文字
" set foldmarker="{{{,}}}"
" 折りたたみの方法を指定
" set foldmethod="syntax"
" 折りたたまれる行がこの数字より多い場合のみ折りたたむ
set foldminlines=1
" 折りたたみの入れ子の深さの最大値を指定
" set foldnestmax=20
" 折りたたみを自動展開するコマンドの指定
set foldopen="block,hor,insert,mark,percent,quickfix,search,tag,undo"
" foldしたところに表示する書式指定
" set foldtext="foldtext()"
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM

" -----------------------------------------------------------検索
" 前回の検索結果をハイライト
set hlsearch
" 検索で大文字小文字の違いを無視
set ignorecase
" 末尾まで検索したら先頭から検索
set wrapscan
" インクリメンタルサーチ
set incsearch
" 検索の時, 大文字を含む場合は大文字小文字を区別
set smartcase

" -----------------------------------------------------------プレビューウィンドウ
" プレビューウィンドウの高さ
set previewheight=12

" -----------------------------------------------------------Exモード
" Exモードで:をつける
set prompt

" -----------------------------------------------------------補完
" 補完候補の表示最大数
" set pumheight=0 
" 補完時にタグ名と整理された検索パターンを表示
set showfulltag
" 補完オプション
" set completeopt="menu,preview"
" 補完の時に大文字小文字の修正を行う
" set infercase

" -----------------------------------------------------------スクロール
" カーソルが画面から出た時にスクロールする最小行
set scrolljump=1
" カーソルの上下に表示する行の最小行
set scrolloff=2
" カーソルの左右に表示する行の最小行
set sidescrolloff=0
" sidescrollの刻み幅
set sidescroll=1
" スクロールしてもカーソル位置維持
set nostartofline

" -----------------------------------------------------------ヤンク
" 無名レジスタの代わりにクリップボードを使用する
if has('unix')
	set clipboard=unnamedplus,autoselect
elseif has('win32') || has('win64')
	set clipboard=unnamed,autoselect
endif

" -----------------------------------------------------------入力
" ESCキーから始まるキーを挿入モードで認識しない
set noesckeys
" IME切り替えボタンの指定
set imactivatekey=C-S-`
" 数の増減の挙動設定
set nrformats="alpha,hex"
" ~を{motion}付きに
set notildeop
" タイムアウトの設定
" set timeout
" set nottimeout
" タイムアウト時間の設定ms
" set timeoutlen=1000
" set ttimeoutlen=-1

" -----------------------------------------------------------ビジュアルモード
" 選択モードの操作に視点も終点も含むように
set selection=inclusive
" 矩形ビジュアルモードで, 文字のないところにもカーソルを移動可能に
set virtualedit+=block

" -----------------------------------------------------------ファイル
" ファイルが外部で変更されたら，自動的に再読み込み
set autoread
" 別ファイルに移動時に，変更されていても自動書き込みしない
set noautowrite
" 終了時等に自動保存しない
set noautowriteall
" 上書きに成功したらバックアップを破棄
set nobackup
" ファイルブラウザ開始時にどのフォルダを開くか
set browsedir=current
" ファイルを保存していなかった場合，ダイアログを出して確認
set confirm

" -----------------------------------------------------------cscope
" タグリストの中でパスの上部をどこまで表示するか指定
" set cscopepathcomp=0
" Cscopeを実行するコマンド
" set cscopeprg="cscope"
" cscopeにquickfixを使う
set cscopequickfix=s-,c-,d-,i-,t-,e-
" cscopeデータベースに情報を追加するときメッセージを表示しない
set nocscopeverbose

" -----------------------------------------------------------メモリ
" 1つのバッファに割り当てるメモリの最大値
set maxmem=500000
" パターンマッチングに使うメモリの最大値
set maxmempattern=500000
" 全てのバッファで使用するメモリの最大値
set maxmemtot=2000000

" -----------------------------------------------------------その他
" シェルの変更
" set shell=
" スペルチェックしない
set nospell
" 暗号化アルゴリズム
set cryptmethod=blowfish
" diffの設定(2つのウィンドウ同期，空白数の違い無視，縦に分割)
set diffopt="filler, iwhite, vertical"
" ファイルを保存するときに，undoの履歴も保存するように
set undofile
" undoで保存する履歴の件数
set undolevels=1000
" リロード時に指定行よりソースが少ない場合はundoで戻れるようにバッファ全体を保存
" set undoreload=1000
" この文字数打ち込まれると，バックアップを保存する
" set updatecount=200
" この時間入力がなければ，スワップファイルに書き込む(ms)
" set updatetime=4000
" バッファを切り替えるときの動作を設定
set switchbuf="useopen,usetab,split"
" この拡張子は複数マッチした場合の優先度が下がる
set suffixes=".bak,~,.o,.h,.info,.swp,.obj"

set modeline
" ----------------------------------------------------------- 未使用
" Cファイルのインデント設定 ← smartindentでおｋ
" set nocindent
" Cインデントのチェックを行うキー
" set cinkeys=
" Cインデントの方法の設定
" set cinoptions=""
" Cインデントで次の行がインデントされるキーワードの指定
" set cinwords=

" :substituteのg,cオプションを次指定されるまで維持
" set noedcompatible
" substituteコマンドでオプションgがデフォルトになる
" set nogdefault

" grepのフォーマット指定
" set grepformat
" grepコマンドで使用する関数の指定
" set grepprg=

" shift+特殊キーでのアクション設定
" set keymodel=

" シェル実行時に渡すフラグ
" set shellcmdflag=
" makeの出力結果とかをパイプしてファイルに吐くために使うコマンド
" set shellpipe
" シェルコマンドを囲う引用符
" set shellquote=""
" シェルのリダイレクションに使われる文字列
" set shellredir=
" シェルコマンドに一時ファイルを使う
" set shelltemp
" 文の終わりを見つけるのに使うフラグ
" set spellcapcheck=
" zg, zwで単語を追加するファイル名
" set spellfile=""
" スペルチェックに使うファイルの指定
" set spelllang="en"

" cscopeのプレフィックスが無いときのデフォルト挙動
" set nocscopetag
" cscopeの検索を行う順番の指定
" set cscopetagorder=0

" エンコーディング指定
" set encoding=
" quickfixでのエラーファイルの名前
" set errorfile=
" ↑ のエラーファイルの書式指定
" set errorformat=

" バッファは放棄されるときに開放される
" set hidden
" ファイル名に使う文字を指定
" set isfname=
" 暗号化に使うキーの指定
" set key=

" menuの翻訳に使う言語の設定
" set langmenu=
" 起動時にプラグイン読み込み
" set loadplugins
" makeとgrepのエラーファイルの名前
" set makeef=
" makeにつかうプログラムの名前
" set makeprg=
" なんか文字の組み合わせの最大
" set maxcombine
" menu項目数の最大値
" set menuitems=25
" デバイスからの読み書きを有効化
" set noopendevice
" パッチ適用に使う関数を指定
" set patchexpr=
" 最も古いバージョンを補完しておく
" set patchmode=""
" autocmdなどを無効化
" set nosecure
" セッション作成の設定
" set sessionoptions="blank,buffers,curdir,folds,help,options,tabpages,winsize"
" gfコマンド等で検索する拡張子の追加
" set suffixesadd=
" バッファでスワップファイルを使用
" set swapfile
" ファイルの同調設定
" set swapsync="fsync"
" tagファイルが整理されているかどうか，明示的に書かれてるか
" set tagbsearch
" tagの名前の有効文字数
" set taglength=0
" tagファイルが置かれてるパスを考慮して相対パスを解釈
" set tagrelative
" tagファイルのファイル名
" set tags=
" tagスタックを通常どうり使用
" set tagstack
" ターミナル名
" set term=$TERM
" 端末がテキストの双方向性に対応
" set notermbidi
" ターミナルのエンコーディング
" set termencoding=""
" シソーラス補完につかうファイル名
" set thesaurus=""
" undoファイル用のディレクトリ指定
" set undodir="."
" verboseをこのファイル名に出力する
" set verbosefile=""
" mkviewに使うファイル名の指定
" set viewdir="~/.vim/view"
" mkviewで保存する内容のオプション
" set viewoptions="folds,options,cursor"
" 起動時に読み込むviminfoの設定
" set viminfo=
" ファイル上書きの前にバックアップを作る
" set writebackup
"

" ヤンクでカーソル位置の単語を置換
nnoremap <silent> ciy ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
noremap Y y$              
noremap <silent> <C-[> $

