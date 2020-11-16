" import dein plugins
source ~/.dotfiles/.vimrc.dein

"-----------------------------------------------------------------------------
" Colorscheme
"-----------------------------------------------------------------------------
" molokai, none( ) 
"colorscheme molokai


"-----------------------------------------------------------------------------
" dein.vim plugins config
"-----------------------------------------------------------------------------
" lightline.vim
" status bar colorscheme
let g:lightline = {
\ 'colorscheme': 'landscape',
\ }

set ruler
set showcmd
set showmode
set laststatus=2


" CtrlP
let g:ctrlp_match_window = 'top,order:ttb,min:10,max:10,results:100'
let g:ctrlp_show_hidden = 1
let g:ctrlp_types = ['fil']
"let g:ctrlp_extensions = ['funky', 'commandline']


"-----------------------------------------------------------------------------
" KeyBind
"-----------------------------------------------------------------------------
" esc pressionando jj
inoremap <silent> jj <ESC>

" abrir .vimrc com <space> + .
nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>

" cancel search highlight
nmap <silent> <Esc><Esc> :nohlsearch<CR>


"-----------------------------------------------------------------------------
" General
"-----------------------------------------------------------------------------
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set wildmenu

"set clipboard=unnamedplus
"set clipboard+=unnamed
"set guioptions+=a

" Appearence
set background=dark
"set background=light

" Cursor
set number
set cursorline
set cursorcolumn
set showmatch

"set virtualedit=onemore

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set whichwrap=b,s,h,l,<,>,[,],~

set backspace=indent,eol,start

" Tab
set list listchars=tab:\▸\-

set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2

" Search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch


"-----------------------------------------------------------------------------
" Bar scroll, menu, tool "
"-----------------------------------------------------------------------------
"set guioptions-=m
"set guioptions-=T

"set guioptions-=b

"set guioptions-=r
"set guioptions-=R
"set guioptions-=l
"set guioptions-=L


