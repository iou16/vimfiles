
call dein#begin("$HOME/.dein")
call dein#load_toml("$HOME/vimfiles/dein.toml")
call dein#end()
let plugins = dein#get()
let s:output = [ "" ]
for plugin in items(plugins)
	if has_key(plugin[1]['orig_opts'], 'repo')
		call remove(plugin[1]['orig_opts'], 'repo')
	endif
	if has_key(plugin[1]['orig_opts'], 'hook_add')
		call remove(plugin[1]['orig_opts'], 'hook_add')
	endif
	if has_key(plugin[1]['orig_opts'], 'if')
		call remove(plugin[1]['orig_opts'], 'if')
	endif
	call add(s:output, "call dein#add('".plugin[1]['repo']."', ".substitute(string(plugin[1]['orig_opts']), "\\n", "\", 'g').")")
endfor
" call add(s:output, '\ })')
" echo s:output
call writefile(s:output, "dein_dict.vimrc")
