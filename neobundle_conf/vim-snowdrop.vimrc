NeoBundle 'osyo-manga/vim-snowdrop',
\ {
\     'name' : 'vim-snowdrop',
\     'path' : 'osyo-manga/vim-snowdrop',
\     'description' : 'libclang in Vim',
\     'author' : 'osyo-manga',
\     'website' : 'https://github.com/osyo-manga/vim-snowdrop',
\     'lazy' : 1,
\     'autoload' : {
\         'unite_sources' : [
\             'snowdrop',
\         ],
\         'commands' : [
\             'SnowdropErrorCheck',
\             'SnowdropLogs',
\             'SnowdropClearLogs',
\             'SnowdropEchoTypeof',
\             'SnowdropEchoResultTypeof',
\             'SnowdropGotoDefinition',
\             'SnowdropEchoIncludes',
\             'SnowdropFixit',
\             'SnowdropVerify',
\             'SnowdropEchoClangVersion',
\         ],
\     },
\ }