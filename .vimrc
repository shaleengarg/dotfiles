set nocompatible

"Numbering settings
set nu
set numberwidth=5

"Tab Settings
set sw=4
set sts=4
set tabstop=5
set expandtab
set laststatus=2
set ruler

"Pasting setting 
"set paste

"Search settings
set hlsearch
set incsearch

"Highlighting
syntax on
filetype plugin indent on

"folding 
set foldmethod=syntax
set nofoldenable

"Colorcheme Settings
set background=dark
colorscheme molokai

"cscope
source cscope_maps.vim

set wildmenu
set wildmode=list:full
set mouse=a
set history=1000

"Tabnew color
hi Tabline ctermfg=LightGreen
