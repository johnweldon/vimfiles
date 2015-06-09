" XML filetype plugin file
" Language:	xml
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatXML
nmap <buffer> <script> <Plug>FormatXML <SID>Format
nmenu <script> Plugin.Format\ XML <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent! %s/{%/<? &/g
	silent! %s/%}/& ?>/g
	"silent %!tidy -config ~/.tidyxml
	silent %!fmtf
	silent! %s/<? {%/{%/g
	silent! %s/%} ?>/%}/g
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()

