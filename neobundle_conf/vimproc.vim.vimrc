NeoBundle 'shougo/vimproc.vim',
\ {
\    'name' : 'vimproc.vim',
\    'path' : 'shougo/vimproc.vim',
\    'description' : 'Interactive command execution in Vim.',
\    'author' : 'Shougo',
\    'website' : 'https://github.com/shougo/vimproc.vim',
\    'build' : {
\        'windows' : 'tools\\update-dll-mingw',
\        'cygwin' : 'make -f make_cygwin.mak',
\        'mac' : 'make -f make_mac.mak',
\        'linux' : 'make',
\        'unix' : 'gmake',
\    },
\ }