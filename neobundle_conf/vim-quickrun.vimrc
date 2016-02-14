NeoBundle 'thinca/vim-quickrun',
\ {
\     'name' : 'vim-quickrun',
\     'path' : 'thinca/vim-quickrun',
\     'description' : 'Run commands quickly.',
\     'author' : 'thinca',
\     'website' : 'https://github.com/thinca/vim-quickrun',
\     'lazy' : 1,
\     'autoload' : {
\         'mappings' : [
\             [
\                 'sxn',
\                 '<Plug>(quickrun',
\             ],
\         ],
\         'commands' : [
\             {
\                 'complete' : 'customlist,quickrun#complete',
\                 'name' : 'QuickRun',
\             },
\         ],
\     },
\ }
