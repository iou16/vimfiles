NeoBundle 'LeafCage/yankround.vim',
\ {
\     'name' : 'yankround.vim',
\     'path' : 'LeafCage/yankround.vim',
\     'description' : 'レジスタの履歴を取得し再利用する。',
\     'author' : 'LeafCage',
\     'website' : 'https://github.com/LeafCage/yankround.vim',
\     'lazy' : 1,
\     'autoload' : {
\         'unite_sources' : [
\             'yankround',
\         ],
\         'mappings' : [
\             [
\                 'cxn',
\                 '<Plug>(yankround-',
\             ],
\         ],
\         'commands' : [
\             'CtrlPYankRound',
\         ],
\     },
\ }
