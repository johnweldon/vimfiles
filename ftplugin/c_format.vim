" Vim ftplugin for using astyle to format c files
" Last Change: 2011 Jul 27
" Maintainer: John Weldon <johnweldon4@gmail.com>
" License: public domain

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatC
nmap <buffer> <script> <Plug>FormatC <SID>Format
nmenu <script> Plugin.Format\ C <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	exec 'silent %!astyle --options=' . expand('~/.astylerc.c')
	call setpos('.', pos)
endfunction

command! -nargs=0 Format :call s:Format()

