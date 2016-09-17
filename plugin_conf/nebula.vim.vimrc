if !neobundle#tap('nebula.vim')
  finish
endi

function! s:impl_output (object, indent, line_head)
  let object_type = type(a:object)
  if object_type == type({})
    let s:output_string[-1] = s:output_string[-1].'{'
    call s:output_dict (a:object, a:indent+1, a:line_head)
    call add(s:output_string,a:line_head.repeat("\t", a:indent).'},')
  elseif object_type == type([])
    let s:output_string[-1] = s:output_string[-1].'['
    call s:output_list (a:object, a:indent+1, a:line_head)
    call add(s:output_string,a:line_head.repeat("\t", a:indent).'],')
  else
    let s:output_string[-1] = s:output_string[-1].string(a:object).','
  endif
endfunction
 
function! s:output_dict (dict, indent, line_head) 
  for key_name in keys(a:dict)
    call add(s:output_string, a:line_head.repeat("\t", a:indent).string(key_name).' : ')
    call s:impl_output (a:dict[key_name], a:indent, a:line_head)
  endfor
endfunction

function! s:output_list (list, indent, line_head) 
  for i in range(0, len(a:list)-1)
    call add(s:output_string,a:line_head.repeat("\t", a:indent))
    call s:impl_output (get(a:list,i), a:indent, a:line_head)
  endfor
endfunction

function! NebulaPutTap (enable_shortening) 
  let bundle = nebula#_get_bundle()
  if bundle == {}
    return {}
  endif
  let [nb_options, elements] = nebula#_fetch_options(bundle)
  let s:output_string = [printf('if neobundle#tap(''%s'')', bundle.name)]
  call add(s:output_string, "\tcall neobundle#config ({")
  if a:enable_shortening && has_key(nb_options, 'autoload') && (len(nb_options)==1)
    call s:output_dict(nb_options['autoload'], 1, "\t\\ ")
  else 
    call s:output_dict(nb_options, 1, "\t\\ ")
  endif
  call add(s:output_string, "\t\\ })")
  call add(s:output_string, "\tfunction! neobundle#tapped.hooks.on_source(bundle)")
  call add(s:output_string, printf("\t\truntime! conf.d/%s.vimrc", substitute(bundle.name, '.vim$', '', "")))
  call add(s:output_string, "\tendfunction")
  call add(s:output_string, "\tcall neobundle#untap()")
  call add(s:output_string, "endif")
  call append('.', s:output_string)
endfunction

function! NebulaRecipeGen (enable_shortening) 
	"
	if expand("%:e") != 'vimrecipe'
		echo ('vimrecipeファイルではありません')
		return 
	endif
	"
	let bundle = neobundle#get(fnamemodify(expand("%"),":t:r"))
	if bundle == {}
		return {}
	endif
	let [nb_options, elements] = nebula#_fetch_options(bundle)
	let s:output_string = ["\t'autoload' : {"]
	if a:enable_shortening && has_key(nb_options, 'autoload') && (len(nb_options)==1)
		call s:output_dict(nb_options['autoload'], 1, "\t")
	else 
		call s:output_dict(nb_options, 1, "\t"))
	endif
	call add(s:output_string, "\t},")
	call append('.', s:output_string)
endfunction

command! -nargs=0 -bang  NebulaPutTap call NebulaPutTap(<bang>0)

call neobundle#untap()
