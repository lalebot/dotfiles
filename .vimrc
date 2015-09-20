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
" Plugin 'Xuyuanp/nerdtree-git-plugin'

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
autocmd vimenter * NERDTree

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" The default 20 isn't nearly enough
set history=9999
" Show the numbers on the left of the screen
set number
" Show the column/row
set ruler
" Show the current command at the bottom
set showcmd
" Don't show the startup message
set shortmess=I
" Disable beeping and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" Use smarter defaults
set smartindent
set smarttab
" The tabstop look best at 4 spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Always show the last line
set display+=lastline
" UTF-8
set encoding=utf-8
" Enhanced mode for command-line completion
set wildmenu
" Automatically re-read the file if it has changed
set autoread
" Varios
set showcmd    " Show (partial) command in status line.
set showmatch     " Show matching brackets.
set ignorecase    " Do case insensitive matching
" set smartcase     " Do smart case matchiny
" set incsearch     " Incremental search
" set hidden     " Hide buffers when they are abandoned
" set mouse=a    " Enable mouse usage (all modes)
" set smartindent " auto tab



" Pretty colors
if has("syntax")
  syntax on
endif

" Color bubblegum
colorscheme bubblegum-256-dark
let g:airline_theme = "bubblegum"
set guifont=Terminess\ Powerline\ 11

" Color Solarized
"colorscheme solarized
"set background=dark
"let g:airline_theme = "solarized"
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
let $PYTHONPATH='/usr/lib/python3.4/site-packages'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remap para manejar los buffers
nmap <silent> sh <C-W>h
nmap <silent> sj <C-W>j
nmap <silent> sk <C-W>k
nmap <silent> sl <C-W>l

" Remap para manejar pestañas
nnoremap <silent> sn :tabp<cr>
nnoremap <silent> sm :tabn<cr>

" Ocultar/desocultar NERDtree
nnoremap <silent> si :NERDTreeToggle<cr>