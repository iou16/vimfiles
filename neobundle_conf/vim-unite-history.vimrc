NeoBundle 'thinca/vim-unite-history',
\ {
\     'name' : 'vim-unite-history',
\     'path' : 'thinca/vim-unite-history',
\     'description' : 'A source of unite.vim for history of command/search.',
\     'author' : 'thinca',
\     'website' : 'https://github.com/thinca/vim-unite-history',
\     'depends' : 'Shougo/unite.vim',
\     'lazy' : 1,
\     'autoload' : {
\         'unite_sources' : [
\             'history/command',
\             'history/search',
\         ],
\     },
\ }
