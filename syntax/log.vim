" Vim syntax file
" Language:	jcw4 log files
" Maintainer:	John Weldon <johnweldon4@gmail.com>
" Version: 1.0

" Compatible VIM syntax file start
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" log file doesn't care about case
syn case ignore

syn match jcw4DT /^\d\{4\}-\d\{4\}/
syn match jcw4WO /##.*##$/

hi link jcw4WO Comment
hi link jcw4DT Keyword

let b:current_syntax = "jcw4log"
