set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Navegador de archivos
Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" jPlugin 'Xuyuanp/nerdtree-git-plugin'

" Git
Plugin 'airblade/vim-gitgutter'

" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

" Color schemes
Plugin 'baskerville/bubblegum'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
"Plugin 'shinchu/lightline-gruvbox'
Plugin 'jpo/vim-railscasts-theme'

Plugin 'scrooloose/syntastic'     " muestra errores de syntaxis

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
autocmd vimenter * NERDTree

" The default 20 isn't nearly enough
set history=9999
" Show the numbers on the left of the screen
set number
" Show the column/row
set ruler
" Show the current command at the bottom
set showcmd
" Evitamos el Wrapping
set wrap
" Don't show the startup message
set shortmess=I
" Disable beeping and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Always show the last line
set display+=lastline
" UTF-8
set encoding=utf-8
" Enhanced mode for command-line completion
" set wildmenu
" Automatically re-read the file if it has changed
set autoread
" Varios
set showmatch     " Show matching brackets.
set ignorecase    " Do case insensitive matching
" set smartcase     " Do smart case matchiny
" set incsearch     " Incremental search
set hidden      " Hide buffers when they are abandoned
" set mouse=a   " Enable mouse usage (all modes)

" Ver puntos en los tabs"
set list
set listchars=tab:>·,eol:¬,trail:~,extends:>,precedes:<,nbsp:%

" size of a hard tabstop
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Use smarter defaults
set smartindent
set smarttab
" Use autoindenting
set autoindent
set copyindent

" Undo levels
set undolevels=1000

" Change terminal title 
set title

" Disable foldin
set nofoldenable

" Swap file save my work many times :) 
set swapfile

" Use F2 when pasting to avoid applying indents 
set pastetoggle=<F2>




" Pretty colors
if has("syntax")
  syntax on
endif

" Color lightline-gruvbox'"
"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'

" Color bubblegum
"colorscheme bubblegum-256-dark
"let g:airline_theme = "bubblegum"
"set guifont=Terminess\ Powerline\ 11

" Color Solarized
"colorscheme solarized
"set background=dark
"let g:airline_theme = "solarized"
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10

" Color gruvbox
set background=dark
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_italicize_comments = 0
colorscheme gruvbox
" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
let $PYTHONPATH='/usr/lib/python3.4/site-packages'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap para manejar los paneles
nmap <silent> sh <C-W>h
nmap <silent> sj <C-W>j
nmap <silent> sk <C-W>k
nmap <silent> sl <C-W>l

" Remap para manejar pestañas
nnoremap <silent> sn :tabp<cr>
nnoremap <silent> sm :tabn<cr>

" Ocultar/desocultar NERDtree
nnoremap <silent> si :NERDTreeToggle<cr>

" Remap para manejar los buffers
nnoremap <silent> sa :bprevious<cr>
nnoremap <silent> sd :bnext<cr>
