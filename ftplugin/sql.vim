" Vim filetype plugin file
" Language:	T-SQL
" Maintainer:   John Weldon <johnweldon4@gmail.com>
" Version: 1.0
"

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif

" Don't load another plug-in for this buffer
let b:did_ftplugin = 1

setlocal tw=0
setlocal commentstring=--%s
setlocal formatoptions=tcqro

nmap <F5> :!sqlcmd -w 1000 -W -s"," -S . -E -d ReportingDW -i "%:p" <CR>

