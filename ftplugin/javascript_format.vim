" Vim ftplugin for using js-beautify to format javascript
" Last Change: 2015 Sep 15
" Maintainer: John Weldon <johnweldon4@gmail.com>
" License: public domain

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatJS
nmap <buffer> <script> <Plug>FormatJS <SID>Format
nmenu <script> Plugin.Format\ JavaScript <SID>Format
nmap <SID>Format :call <SID>FormatJavascript()<CR>

function! s:FormatJavascript()
  let pos = getpos('.')
  silent update
  silent %!js-beautify -j -s 2 -n -p -m 2 -f -
  call setpos('.', pos)
endfunction

command! -nargs=0 Format :call s:FormatJavascript()

