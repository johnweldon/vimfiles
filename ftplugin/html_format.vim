" HTML filetype plugin file
" Language:	html
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatHTML
nmap <buffer> <script> <Plug>FormatHTML <SID>Format
nmenu <script> Plugin.Format\ HTML <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!html-beautify --type "html" -s 2 -n -p -m 2 -f -
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()
