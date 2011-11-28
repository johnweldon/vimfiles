" Vim filetype plugin file
" Language:	fsharp
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

setlocal shiftwidth=4
setlocal tabstop=4
setlocal expandtab

nmap <F5> :!fsi "%:p"<CR>
