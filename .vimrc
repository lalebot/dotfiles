set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Navegador de archivos
"Plugin 'python.vim'
"Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'bling/vim-airline' " lean & mean status/tabline for vim that's light as air
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

"Plugin 'edkolev/tmuxline.vim' " set airline colors to tmux

"Plugin 'rainbow_parentheses.vim'
"au VimEnter * RainbowParenthesesToggle
"au VimEnter * RainbowParenthesesLoadSquare   " []
"au VimEnter * RainbowParenthesesLoadBraces   " {}
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

Plugin 'airblade/vim-gitgutter'
highlight clear SignColumn

"Plugin 'tpope/vim-commentary'     " hace comentarios
Plugin 'scrooloose/syntastic'     " muestra errores de syntaxis
Plugin 'tpope/vim-fugitive'       " git plugin

" Color schemes
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'sickill/vim-monokai'
Plugin 'baskerville/bubblegum'
"Plugin '29decibel/codeschool-vim-theme'
"Plugin 'tomasr/molokai'

"Plugin 'tpope/vim-surround'           " S para surround rodear algo con comillas
"Plugin 'Lokaltog/vim-easymotion'      " moverse facil por el documento
"Plugin 'KabbAmine/vCoolor.vim'        " gui color picker
"Plugin 'gorodinskiy/vim-coloresque'   " color highlight
"Plugin 'majutsushi/tagbar'            " tags plugin
"Plugin 'Shougo/neocomplcache.vim'     " autocompletado

call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd vimenter * NERDTree

" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Si hemos abierto Vim en modo GUI
if has("gui_running")
    colorscheme solarized
    set background=dark
    let g:airline_theme = "solarized"
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
else
    colorscheme bubblegum-256-dark
    let g:airline_theme = "bubblegum"
    set guifont=Terminess\ Powerline\ 11
endif

"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

"if has("autocmd")
"  filetype plugin indent on
"endif

"set showcmd    " Show (partial) command in status line.
"set showmatch     " Show matching brackets.
"set ignorecase    " Do case insensitive matching
"set smartcase     " Do smart case matchiny
"set incsearch     " Incremental search
"set hidden     " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)
"set smartindent " auto tab

let $PYTHONPATH='/usr/lib/python3.4/site-packages' " Para que ande el powerline