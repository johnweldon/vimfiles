" go filetype plugin file
" Language:	go
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1


se makeprg=go
nmap <buffer> <LocalLeader>r :Fmt<cr>

