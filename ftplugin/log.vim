" Vim filetype plugin file
" Language:	jcw4 log files
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

map <buffer> <silent> ,tc :%!TimeCalcCmd<cr>
map <buffer> <silent> ,r :%!TimeCalcCmd<cr>
