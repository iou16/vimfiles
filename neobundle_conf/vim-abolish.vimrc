NeoBundle 'tpope/vim-abolish',
\ {
\     'name' : 'vim-abolish',
\     'path' : 'tpope/vim-abolish',
\     'description' : 'abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word',
\     'author' : 'Tim Pope',
\     'website' : 'https://github.com/tpope/vim-abolish',
\     'lazy' : 1,
\     'autoload' : {
\         'mappings' : [
\         [
\             'n',
\             '<Plug>Coerce', 'cr',
\         ],
\         ],
\         'commands' : [
\         {
\             'complete' : 'custom,s:SubComplete',
\             'name' : ['S', 'Subvert'],
\         },
\         {
\             'complete' : 'custom,s:Complete',
\             'name' : 'Abolish',
\         },
\         ],
\     },
\ }
