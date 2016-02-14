NeoBundle 'tpope/vim-surround',
\ {
\     'name' : 'vim-surround',
\     'path' : 'tpope/vim-surround',
\     'description' : 'surround.vim: quoting/parenthesizing made simple',
\     'author' : 'Tim Pope',
\     'website' : 'https://github.com/tpope/vim-surround',
\     'lazy' : 0,
\     'autoload' : {
\         'mappings' : [
\             '<Plug>CSurround',
\             '<Plug>Csurround',
\             '<Plug>Dsurround',
\             '<Plug>SurroundRepeat',
\             '<Plug>YSsurround',
\             '<Plug>YSurround',
\             '<Plug>Yssurround',
\             '<Plug>Ysurround',
\             [
\                 'i',
\                 '<Plug>ISurround',
\                 '<Plug>Isurround',
\             ],
\             [
\                 'v',
\                 '<Plug>VSurround',
\                 '<Plug>VgSurround',
\             ],
\         ],
\     },
\ }