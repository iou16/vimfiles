NeoBundle 'Shougo/neomru.vim',
\ {
\     'name' : 'neomru.vim',
\     'path' : 'Shougo/neomru.vim',
\     'description' : 'MRU plugin includes unite.vim MRU sources',
\     'author' : 'Shougo',
\     'website' : 'https://github.com/Shougo/neomru.vim',
\     'autoload' : {
\         'augroup' : 'neomru',
\         'autoload' : {
\             'unite_sources' : [
\                 'mru',
\                 'neomru',
\             ],
\             'commands' : [
\                 {
\                     'complete' : 'file',
\                     'name' : 'NeoMRUImportFile',
\                 },
\                 'NeoMRUSave',
\                 {
\                     'complete' : 'file',
\                     'name' : 'NeoMRUImportDirectory',
\                 },
\                 'NeoMRUReload',
\             ],
\         },
\     },
\ }