"pathogen magic (for bundles)
"filetype off
"call pathogen#runtime_append_all_bundles()
"filetype plugin indent on

filetype off
" register bundles (from https://github.com/tpope/vim-pathogen/issues/3)
let s:bundles = tr(globpath(&runtimepath, 'bundle/*/'), "\n", ',')
let s:afters = tr(globpath(s:bundles, 'after/'), "\n", ',')
let &runtimepath = join([s:bundles, &runtimepath, s:afters], ',')
filetype plugin indent on

set nocompatible
source $VIMRUNTIME/mswin.vim

set ruler
set showcmd
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

"colorscheme darkblue
colorscheme solarized
set background=dark
syntax enable

set hlsearch
set incsearch
set nobackup
set mouse=a
set noequalalways
if exists('+colorcolumn')
    set colorcolumn=79
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

if has('gui_running')
    if has('gui_macvim')
        set guifont=Ubuntu\ Mono:h13
    else
        set guifont=Consolas\ 9
        set linespace=-3
    endif
    set background=light
    set guiheadroom=80
    set columns=85
    "set lines=999
    set number
    set guioptions-=m " no menu
    set guioptions-=T " no toolbar
    set guioptions-=L " no scrollbars
    set guioptions-=r
    let NERDTreeIgnore=['\~$', '\.pyc$']
endif
