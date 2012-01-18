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
set ruler
set vb t_vb="<Esc>|10f"
set background=dark
set sidescroll=15
set sidescrolloff=5
set showbreak=\ \ -->\  
set linebreak

set formatprg=indent
set grepprg=grep\ -n
set tags=./tags
set viminfo=""

set matchpairs+=<:>
set printoptions=header:0,paper:letter
set listchars+=precedes:<,extends:>

set rtp+=$GOROOT/misc/vim

filetype plugin indent on


if has("win32")
	set directory=$TEMP
	set makeprg=nmake
	"set shell=powershell.exe\ -nologo\ -executionpolicy\ remotesigned
	"set shellcmdflag=-noninteractive\ -noprofile\ -command
	"set shellpipe=>
	"set shellredir=>
else
	set directory=/var/tmp
	set makeprg=make
endif

if version >= 700
	set diffopt=vertical
endif


let c_comment_strings=1

syntax on

vmap <silent> <F6> :!sort<CR>

"set autochdir
"nnoremap <f5> "=strftime("Date: %Y-%m-%d")<cr>p


