NeoBundle 'sgur/unite-git_grep',
\ {
\     'name' : 'unite-git_grep',
\     'path' : 'sgur/unite-git_grep',
\     'description' : 'git-grep source for unite.vim inspired by http://subtech.g.hatena.ne.jp/secondlife/20080606/1212729424',
\     'author' : 'sgur',
\     'website' : 'https://github.com/sgur/unite-git_grep',
\     'lazy' : 1,
\     'autoload' : {
\         'unite_sources' : [
\             'git_grep',
\             'hg_grep',
\             'vcs_grep',
\         ],
\     },
\ }
