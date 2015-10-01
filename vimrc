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
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Shougo/neocomplcache.vim'
" NeoBundle 'honza/vim-snippets'
NeoBundle 'scrooloose/syntastic'
" NeoBundle 'Xuyuanp/nerdtree-git-plugin'
" NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-commentary'
" NeoBundle 'reedes/vim-thematic'
" NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'easymotion/vim-easymotion'
" NeoBundle 'Yggdroot/indentLine'
" NeoBundle 'powerman/vim-plugin-autosess'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'myusuf3/numbers.vim'

NeoBundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Color schemes
NeoBundle 'baskerville/bubblegum'
"NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'morhetz/gruvbox'
"NeoBundle 'shinchu/lightline-gruvbox'
"NeoBundle 'jpo/vim-railscasts-theme'
"NeoBundle 'chriskempson/base16'

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

set t_Co=256
set term=xterm-256color

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
set writebackup
set swapfile

set number               " Show the numbers on the left of the screen
set ruler                " Show the column/row
set cursorline                  " Highlight current line
set showcmd              " Show the current command at the bottom

set shortmess=I          " Don't show the startup message
set display+=lastline    " Always show the last line
set wildmenu           " Enhanced mode for command-line completion

set autoread             " Automatically re-read the file if it has changed
set showmatch     " Show matching brackets.
set ignorecase    " Do case insensitive matching

set list           " Ver puntos en los tabs
set listchars=tab:>·,eol:¬,trail:~,extends:>,precedes:<,nbsp:%

set wrap        " wrap lines
set tabstop=4     " a tab is four spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set expandtab
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

set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current



:syntax on

" Setup folder structure
if !isdirectory(expand('~/.vim/undo/', 1))
    silent call mkdir(expand('~/.vim/undo', 1), 'p')
endif
if !isdirectory(expand('~/.vim/backup/', 1))
    silent call mkdir(expand('~/.vim/backup', 1), 'p')
endif
if !isdirectory(expand('~/.vim/swap/', 1))
    silent call mkdir(expand('~/.vim/swap', 1), 'p')
endif

set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//


""""""""
" PYTHON
" autocmd filetype python set expandtab set nowrap


"""""""""""
" Powerline
let $PYTHONPATH='/usr/lib/python3.4/site-packages'
"""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Funciones
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bundles Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme bubblegum-256-dark
let g:airline_theme = "bubblegum"

"colorscheme solarized
"let g:airline_theme = "solarized"
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10

" Color gruvbox
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_italicize_comments = 0
" colorscheme gruvbox
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'gruvbox'

set background=dark
set guifont=Terminess\ Powerline\ 11

" Markdown
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMAP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = 'ñ'

" Remap para manejar los paneles
nmap <silent> sh <C-W>h
nmap <silent> sj <C-W>j
nmap <silent> sk <C-W>k
nmap <silent> sl <C-W>l

" Remap para manejar pestañas
nnoremap <silent> sn :tabp<cr>
nnoremap <silent> sm :tabn<cr>


" Remap para manejar los buffers
nnoremap <silent> sa :bprevious<cr>
nnoremap <silent> sd :bnext<cr>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


    " Fugitive {
        if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
            nnoremap <silent> <leader>gs :Gstatus<CR>
            nnoremap <silent> <leader>gd :Gdiff<CR>
            nnoremap <silent> <leader>gc :Gcommit<CR>
            nnoremap <silent> <leader>gb :Gblame<CR>
            nnoremap <silent> <leader>gl :Glog<CR>
            nnoremap <silent> <leader>gp :Git push<CR>
            nnoremap <silent> <leader>gr :Gread<CR>
            nnoremap <silent> <leader>gw :Gwrite<CR>
            nnoremap <silent> <leader>ge :Gedit<CR>
            " Mnemonic _i_nteractive
            nnoremap <silent> <leader>gi :Git add -p %<CR>
            nnoremap <silent> <leader>gg :SignifyToggle<CR>
        endif
    "}

    " NerdTree {
        if isdirectory(expand("~/.vim/bundle/nerdtree"))
            nnoremap <silent> si :NERDTreeToggle<cr>
            " map <C-e> <plug>NERDTreeTabsToggle<CR>
            map <leader>e :NERDTreeFind<CR>
            nmap <leader>nt :NERDTreeFind<CR>

            let NERDTreeShowBookmarks=1
            let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
            let NERDTreeChDirMode=0
            let NERDTreeQuitOnOpen=1
            let NERDTreeMouseMode=2
            let NERDTreeShowHidden=1
            let NERDTreeKeepTreeInNewTab=1
            let g:nerdtree_tabs_open_on_gui_startup=0

            let NERDTreeWinSize = 20
        endif
    "}

    " CtrlP {
            let g:ctrlp_working_path_mode = 'ra'
            let g:ctrlp_map = '<c-p>'
            let g:ctrlp_cmd = 'CtrlP' " Para hacer paste desde el plugin
    "}

    " Numbers{
        nnoremap <F3> :NumbersToggle<CR>
        nnoremap <F4> :NumbersOnOff<CR>
    "}

    " neocomplcache{
        let g:acp_enableAtStartup = 0
        let g:neocomplete#enable_at_startup = 1
        let g:neocomplete#enable_smart_case = 1
        let g:neocomplete#enable_auto_delimiter = 1
        let g:neocomplete#max_list = 15
        let g:neocomplete#force_overwrite_completefunc = 1

        let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

        if !exists('g:neocomplcache_keyword_patterns')
            let g:neocomplcache_keyword_patterns = {}
        endif
        let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
        " Plugin key-mappings.
        inoremap <expr><C-g>     neocomplcache#undo_completion()
        inoremap <expr><C-l>     neocomplcache#complete_common_string()
        " Recommended key-mappings.
        " <CR>: close popup and save indent.
        inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
        function! s:my_cr_function()
          return neocomplcache#smart_close_popup() . "\<CR>"
          " For no inserting <CR> key.
          "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
        endfunction
        " <TAB>: completion.
        inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
        " <C-h>, <BS>: close popup and delete backword char.
        inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
        inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
        inoremap <expr><C-y>  neocomplcache#close_popup()
        inoremap <expr><C-e>  neocomplcache#cancel_popup()
    "}

    " Tabularize {
        if isdirectory(expand("~/.vim/bundle/tabular"))
            nmap <Leader>a& :Tabularize /&<CR>
            vmap <Leader>a& :Tabularize /&<CR>
            nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
            nmap <Leader>a=> :Tabularize /=><CR>
            vmap <Leader>a=> :Tabularize /=><CR>
            nmap <Leader>a: :Tabularize /:<CR>
            vmap <Leader>a: :Tabularize /:<CR>
            nmap <Leader>a:: :Tabularize /:\zs<CR>
            vmap <Leader>a:: :Tabularize /:\zs<CR>
            nmap <Leader>a, :Tabularize /,<CR>
            vmap <Leader>a, :Tabularize /,<CR>
            nmap <Leader>a,, :Tabularize /,\zs<CR>
            vmap <Leader>a,, :Tabularize /,\zs<CR>
            nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
            vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
        endif
    " }
