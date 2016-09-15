
call dein#begin("$HOME/.dein")
call dein#load_toml("$HOME/vimfiles/dein.toml")
call dein#end()
let plugins = dein#get()
let s:output = [ "call dein#load_dict({" ]
for plugin in items(plugins)
	call add(s:output, "\\\t'".plugin[1]['repo']."' : ")
	if has_key(plugin[1], 'orig_opts')
		" call add(s:output, "\\\t\t".string(plugin[1]['orig_opts']).",")
		call add(s:output, "\\\t\t".substitute(string(plugin[1]['orig_opts']), "\\n", "", 'g').",")
	else
		call add(s:output, "\\\t\t{},")
	endif
endfor
call add(s:output, '\ })')
" echo s:output
call writefile(s:output, "dein_dict.vimrc")
