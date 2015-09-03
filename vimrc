runtime bundle/vim-pathogen/autoload/pathogen.vim

let g:pathogen_disabled = []
if has("win32")
    call add(g:pathogen_disabled, 'youcompleteme')
endif
if !has("python")
    echo 'skipping youcompleteme -- missing python'
    call add(g:pathogen_disabled, 'youcompleteme')
endif

call pathogen#infect()
call pathogen#helptags()

let g:syntastic_mode_map = { 
    \ "mode": "active", 
    \ "active_filetypes": ["c","cpp"], 
    \ "passive_filetypes": ["go"] }

set nocompatible

set autoread
set autowrite
set nobomb
set encoding=utf8

set autoindent
set copyindent
set nocindent
set expandtab
set shiftround
set smartindent
set smarttab

set hlsearch
set incsearch

set scrolloff=5
set scrolljump=5

set softtabstop=4
set tabstop=4
set shiftwidth=4
set textwidth=0
set backspace=indent,eol,start

set cmdheight=2
set laststatus=2
set shortmess=atTAI
set modeline
set nowrap
set number
set numberwidth=1
set ruler
set vb t_vb="<Esc>|10f"
set background=dark
set sidescroll=15
set sidescrolloff=5
set showbreak=\ \ +\  
set linebreak
set colorcolumn=+1,+2,+3,+4
set statusline=[%n]\ %<%f\ %h%m%r\ %q%=\ 0x%B\ %b\ \ \ %-14.(%l,%c%V%)\ %o\ %P

hi IncSearch cterm=NONE ctermbg=3 ctermfg=0
hi Search cterm=NONE ctermbg=22 ctermfg=15
hi LineNr cterm=NONE ctermbg=17 ctermfg=1
hi ColorColumn cterm=NONE ctermbg=17 ctermfg=white guibg=darkblue guifg=white

set formatprg=indent
set grepprg=grep\ -n
set tags=./tags
set viminfo=""

set matchpairs+=<:>
set printoptions=header:0,paper:letter
set listchars+=precedes:<,extends:>

set noswapfile
set directory=

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete


if has("win32")
    set makeprg=nmake
else
    set makeprg=make
endif

if version >= 700
    set diffopt=vertical
endif


let c_comment_strings=1

let g:godef_split=0
let g:godef_same_file_in_same_window=1

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

set nocursorline
set synmaxcol=200
syntax on

vmap <silent> <F6> :!sort<CR>

if filereadable(findfile("~/.local.vimrc"))
    source ~/.local.vimrc
endif

