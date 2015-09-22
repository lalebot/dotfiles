if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'airblade/vim-gitgutter' " Git
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'honza/vim-snippets'
NeoBundle 'scrooloose/syntastic'     " muestra errores de syntaxis
" NeoBundle 'Xuyuanp/nerdtree-git-plugin'

NeoBundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Color schemes
NeoBundle 'baskerville/bubblegum'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'morhetz/gruvbox'
"NeoBundle 'shinchu/lightline-gruvbox'
NeoBundle 'jpo/vim-railscasts-theme'

call neobundle#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

filetype on
filetype plugin on
filetype indent on

" If there are uninstalled bundles found on startup,
NeoBundleCheck

set cc=80

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set laststatus=2
set wildignore+=*.so,*.swp,*.zip,*.pyc,*/.git/*
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set hidden      " Hide buffers when they are abandoned

set nobackup
set swapfile

set number               " Show the numbers on the left of the screen
set ruler                " Show the column/row
set showcmd              " Show the current command at the bottom
set shortmess=I          " Don't show the startup message

set display+=lastline    " Always show the last line
" set wildmenu           " Enhanced mode for command-line completion

set autoread             " Automatically re-read the file if it has changed
set showmatch     " Show matching brackets.
set ignorecase    " Do case insensitive matching

set list           " Ver puntos en los tabs
set listchars=tab:>·,eol:¬,trail:~,extends:>,precedes:<,nbsp:%

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set noexpandtab
set softtabstop=4
set autoindent    " always set autoindenting on
set smartindent   " Use smarter defaults
set copyindent    " copy the previous indentation on autoindenting

set backspace=indent,eol,start     " allow backspacing over everything in insert mode
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set nofoldenable  " Disable foldin
set pastetoggle=<F2>  " Use F2 when pasting to avoid applying indents 
set mouse=a   " Enable mouse usage (all modes)

:syntax on

""""""""
" PYTHON
" autocmd filetype python set expandtab set nowrap


"""""""""""
" Powerline
let $PYTHONPATH='/usr/lib/python3.4/site-packages'
"""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
autocmd vimenter * NERDTree

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
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_italicize_comments = 0
colorscheme gruvbox
" Airline theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'

set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMAP
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
